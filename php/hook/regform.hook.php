<?php
 
/**
 * ��� ������ ����������� ������ ������������
 */

    /**
     * �������� ������ ������������
     * @return Bool
	 * ������ ������������ �������, ������ ��� ������� ������ (�.�. �����=�-����)
     */
    function w4a_add_user_check($obj) {
		
		// �������� ������ ������
		unset($obj->error);
		
        // �������� �� �������� ��������
        if (empty($_SESSION['text']) or ($_POST['key'] != $_SESSION['text'])) {
            $obj->error[] = $obj->locale['error_key'];
            return false;
        }

        // �������� ������������ ������
        if (PHPShopSecurity::true_login($_POST['mail_new'])) {
            $data = $obj->PHPShopOrm->select(array('id'), array('login' => "='" . $_POST['mail_new'] . "'"), false, array('limit' => 1));
            if (!empty($data['id']))
                $obj->error[] = $obj->locale['error_id'];
        }

        // �������� �������� ������� 1 � 2
        if ($_POST['password_new'] != $_POST['password_new2'])
            $obj->error[] = $obj->locale['error_password'];

        // �������� ���������� ������
        //   if (!PHPShopSecurity::true_login($_POST['login_new']))
        //      $obj->error[] = $obj->locale['error_login'];

        // �������� ���������� ������
        if (!PHPShopSecurity::true_passw($_POST['password_new']))
            $obj->error[] = $obj->locale['error_password_hack'];

        // �������� ���������� �����
        if (!PHPShopSecurity::true_email($_POST['mail_new']))
            $obj->error[] = $obj->locale['error_mail'];

        // �������� ���������� �����
        if (strlen($_POST['name_new']) < 3)
            $obj->error[] = $obj->locale['error_name'];

        if (count($obj->error) == 0)
            return true;
		else return false;
    }

    /**
     * ����� ����������� ������ �� ����� �������� �� ����
     */
    function action_passw_send_hook($obj) {

        if (PHPShopSecurity::true_email($_POST['login'])) {
            $obj->PHPShopOrm->clean();
            $data = $obj->PHPShopOrm->select(array('*'), array('login' => '="' . $_POST['login'] . '"'), false, array('limit' => 1));
            if (is_array($data)) {

                $obj->set('date', date("d-m-y H:i a"));
                $obj->set('user_ip', $_SERVER['REMOTE_ADDR']);
                $obj->set('user_login', $data['login']);
                $obj->set('user_mail', $data['mail']);
                $obj->set('user_password', $obj->decode($data['password']));

                // ��������� e-mail ������������
                $title = $obj->PHPShopSystem->getName() . " - " . __('�������������� ������ ������������') . " " . $_POST['login'];

                // ���������� e-mail ������������
                $content = ParseTemplateReturn('./phpshop/lib/templates/users/mail_sendpassword.tpl', true);

                // �������� e-mail ������������
                $PHPShopMail = new PHPShopMail($data['mail'], 'robot@' . str_replace("www.", "", $_SERVER['SERVER_NAME']), $title, $content);

                // ��������� �� �������� ����������� ������
                $obj->set('formaContent', ParseTemplateReturn('phpshop/lib/templates/users/message_sendpassword.tpl', true));
            } else {
                // ��������� �� �������� ����������� ������
                $obj->set('formaContent', ParseTemplateReturn('phpshop/lib/templates/users/message_sendpassword_error.tpl', true));
            }
        }

        $obj->set('formaTitle', __('������ �������'));
        $obj->ParseTemplate($obj->getValue('templates.users_page_list'));
    }
	
	
	function add_user_check_hook($obj, $data, $rout){

	  $user_check = w4a_add_user_check($obj);
	  if($user_check==true) $_POST['login_new'] = $data['mail_new'];
	
	}

$addHandler = array
    (

	'add_user_check' =>'add_user_check_hook',
	'action_passw_send'=>'action_passw_send_hook'
);
?>