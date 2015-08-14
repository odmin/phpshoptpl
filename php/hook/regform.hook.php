<?php
 
/**
 * Хук замены Регистрации нового пользователя
 */

    /**
     * Проверка нового пользователя
     * @return Bool
	 * аналог оригинальной функции, только без провеки логина (т.к. логин=е-мэйл)
     */
    function w4a_add_user_check($obj) {
		
		// Обнуляем массив ошибок
		unset($obj->error);
		
        // Проверка на защитную картинку
        if (empty($_SESSION['text']) or ($_POST['key'] != $_SESSION['text'])) {
            $obj->error[] = $obj->locale['error_key'];
            return false;
        }

        // Проверка уникальности логина
        if (PHPShopSecurity::true_login($_POST['mail_new'])) {
            $data = $obj->PHPShopOrm->select(array('id'), array('login' => "='" . $_POST['mail_new'] . "'"), false, array('limit' => 1));
            if (!empty($data['id']))
                $obj->error[] = $obj->locale['error_id'];
        }

        // Проверка равности паролей 1 и 2
        if ($_POST['password_new'] != $_POST['password_new2'])
            $obj->error[] = $obj->locale['error_password'];

        // Проверка валидности логина
        //   if (!PHPShopSecurity::true_login($_POST['login_new']))
        //      $obj->error[] = $obj->locale['error_login'];

        // Проверка валидности пароля
        if (!PHPShopSecurity::true_passw($_POST['password_new']))
            $obj->error[] = $obj->locale['error_password_hack'];

        // Проверка валидности почты
        if (!PHPShopSecurity::true_email($_POST['mail_new']))
            $obj->error[] = $obj->locale['error_mail'];

        // Проверка валидности имени
        if (strlen($_POST['name_new']) < 3)
            $obj->error[] = $obj->locale['error_name'];

        if (count($obj->error) == 0)
            return true;
		else return false;
    }

    /**
     * Экшен отправления пароля по почте проверка по мылу
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

                // Заголовок e-mail пользователю
                $title = $obj->PHPShopSystem->getName() . " - " . __('Восстановление пароля пользователя') . " " . $_POST['login'];

                // Содержание e-mail пользователю
                $content = ParseTemplateReturn('./phpshop/lib/templates/users/mail_sendpassword.tpl', true);

                // Отправка e-mail пользователю
                $PHPShopMail = new PHPShopMail($data['mail'], 'robot@' . str_replace("www.", "", $_SERVER['SERVER_NAME']), $title, $content);

                // Сообщение об успешном отправлении пароля
                $obj->set('formaContent', ParseTemplateReturn('phpshop/lib/templates/users/message_sendpassword.tpl', true));
            } else {
                // Сообщение об успешном отправлении пароля
                $obj->set('formaContent', ParseTemplateReturn('phpshop/lib/templates/users/message_sendpassword_error.tpl', true));
            }
        }

        $obj->set('formaTitle', __('Личный кабинет'));
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