<?php

require_once __DIR__ . '/core/init.php';

$user = new User();

include_once __DIR__ . '/includes/tpls/top.tpl';
include_once __DIR__ . '/includes/tpls/header.tpl';

if($user->isLoggedIn()) {
    require_once __DIR__ . '/includes/todolist.php';
} else {
    include_once __DIR__ . '/includes/tpls/authform.tpl';
}

include_once __DIR__ . '/includes/tpls/footer.tpl';
