<?
    /**
     * quote3.php
     *
     * Outputs price, low, and high of given symbol as text/html, after
     * inserting an artificial delay.
     *
     */


    // pretend server is slow
    sleep(5);

    // try to get quote
    $handle = @fopen("http://download.finance.yahoo.com/d/quotes.csv?s={$_GET['symbol']}&f=e1l1hg", "r");
    if ($handle !== FALSE)
    {
        $data = fgetcsv($handle);
        if ($data !== FALSE && $data[0] == "N/A")
        {
            print("Price: {$data[1]}");
            print("<br />");
            print("High: {$data[2]}");
            print("<br />");
            print("Low: {$data[3]}");
            //print(json_encode($data));
            /*
            $result=array(
            'price'=>$data[1],
            'high'=>$data[2],
            'low'=>$data[3]);
            print(json_encode($result));
            */
        }
        fclose($handle);
    }
?>
