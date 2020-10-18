<?php

class Hoge
{
    private $rows;

    public function __construct(array $rows = [])
    {
        $this->rows = $rows;
    }

    public function add(array $row)
    {
        $this->rows[] = $row;
    }

    public function toArray()
    {
        return $this->rows;
    }
}

$hoge = new Hoge;
$hoge->add([]);

$hoge->toArray();
