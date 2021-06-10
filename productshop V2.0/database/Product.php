<?php

class Product
{
    public $db = null;

    public function __construct(DBController $db)
    {
        if (!isset($db->con)) return null;
        $this->db = $db;
    }

    // recupera datos del getData
    public function getData($table = 'product'){
        $result = $this->db->con->query("SELECT * FROM {$table}");
        $resultArray = array();

        // buscar datos uno por uno
        while ($item = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            $resultArray[] = $item;
        }
        return $resultArray;
    }

    // obtiene los productos por al id q tengan
    public function getProduct($item_id = null, $table= 'product'){
        if (isset($item_id)){
            $result = $this->db->con->query("SELECT * FROM {$table} WHERE item_id={$item_id}");
            $resultArray = array();

            // recupera productos  de uno en uno
            while ($item = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                $resultArray[] = $item;
            }
            return $resultArray;
        }
    }

}