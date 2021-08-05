SELECT SUM(d_amount) AS 'drivers_fair' FROM `d_wallet` dw, transaction_data td WHERE td.transaction_id = dw.transaction_id group by week(td.timestamp)
