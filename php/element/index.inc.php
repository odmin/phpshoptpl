<?php
/**
 * ������� ������ ���������� ������� ��������� @showcase@
 */
class AddToTemplate extends PHPShopProductElements {
    var $debug=false;

    function AddToTemplate() {
        $this->objBase=$GLOBALS['SysValue']['base']['products'];
        parent::PHPShopProductElements();
    }

    function showcase() {

        // �������� �� ������
        if($this->PHPShopNav->index()) {

            // ������ ������
            $template='product_showcase';
            $this->SysValue['templates']['product_showcase']='element/'.$template.'.tpl';

            // ���������� ����� ��� ������ ������
            $cell=1;

            // ���-�� ������� �� ��������
            $limit=1;

            // �������� ������
            //$where['id']=$this->setramdom($limit);
            $where['spec']="='1'";
            $where['enabled']="='1'";

            $this->dataArray[]=$this->select(array('*'),$where,array('order'=>'RAND()'),array('limit'=>$limit));

            // ��������� � ������ ������ � ��������
            $this->product_grid($this->dataArray,$cell,$template,$line=false);

            // �������� � ���������� ������� � ��������
            $this->set('showcase',$this->compile());

            //�������� ������ ��� ������� ��������
            $sql = 'SELECT * FROM `phpshop_page` WHERE category="2000" AND link="indextwo" LIMIT 1';
            $qu = mysql_query($sql);
            $ro = mysql_fetch_array($qu);
            $this->set('mainContentTwo', $ro['content']);

            //��������� ���� �����������
            $sqla = 'SELECT * FROM `phpshop_menu` WHERE element="2" AND flag="1" ORDER BY num';
            $qua = mysql_query($sqla);
            $roa = mysql_fetch_array($qua);
            do {
                $centertextblock .= $roa['content'];
            }
            while ($roa = mysql_fetch_array($qua));
            $this->set('centerMenu', $centertextblock);

            
            
        }
        //������� ��������� ��� ���� �������
        $sql = 'SELECT * FROM `phpshop_page` WHERE category="2000" AND link="indexfast"';
        $qu = mysql_query($sql);
        $ro = mysql_fetch_array($qu);
        if($ro['enabled']==1) {
            $this->set('mainTextFast', $ro['content']);
        }
        else {
            $this->set('mainTextFastComStart', '<!--');
            $this->set('mainTextFastComEnd', '-->');
        }
    }
}


// ��������� � ������ ������� ������ ���������� ������ � ������
$AddToTemplate = new AddToTemplate();
$AddToTemplate->showcase();
?>