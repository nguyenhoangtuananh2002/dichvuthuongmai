<?php

use Illuminate\Support\Str;

if (! function_exists('generate_text_depth_tree')) {
    /**
     * Tạo text theo độ sâu.
     *
     * @param integer $depth
     */
    function generate_text_depth_tree($depth, $word = '-'): string
    {
        $text = '';
        if($depth > 0){
            for($i = 0; $i < $depth; $i++){
                $text .= $word;
            }
        }
        return $text;
    }
}
if (! function_exists('uniqid_real')) {
    function uniqid_real($lenght = 13): string
    {
        // uniqid gives 13 chars, but you could adjust it to your needs.
        if (function_exists("random_bytes")) {
            $bytes = random_bytes(ceil($lenght / 2));
        } elseif (function_exists("openssl_random_pseudo_bytes")) {
            $bytes = openssl_random_pseudo_bytes(ceil($lenght / 2));
        } else {
            throw new \Exception("no cryptographically secure random function available");
        }
        return Str::upper(substr(bin2hex($bytes), 0, $lenght));
    }
}

if (! function_exists('format_price')) {
    function format_price($price, $positionCurrent = 'left'): string
    {
        return $positionCurrent == 'left' ? config('custom.currency').number_format($price) : number_format($price).config('custom.currency');
    }
}
