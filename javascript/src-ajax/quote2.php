<?
    /**
     * quote2.php
     *
     * Outputs price, low, and high of given symbol as plain/text.
     *
     */

    // send MIME type
    header("Content-type: text/plain");

    // try to get quote
    $handle = @fopen("http://download.finance.yahoo.com/d/quotes.csv?s={$_GET['symbol']}&f=e1l1hg", "r");
    if ($handle !== FALSE)
    {
        $data = fgetcsv($handle);
        if ($data !== FALSE && $data[0] == "N/A")
        {
            print("Price: {$data[1]}\n");
            print("High: {$data[2]}\n");
            print("Low: {$data[3]}");
            //print_r($data);
            //print_json_enconde($data);
        }
        fclose($handle);
    }
?>
