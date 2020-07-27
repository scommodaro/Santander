-- lista todos os indices
SELECT a.table_name, a.index_name, a.index_type, a.uniqueness, b.column_position, b.column_name, e.column_expression,
       a.status, a.partitioned
  FROM user_indexes a
  LEFT JOIN user_ind_columns b
    ON b.index_name = a.index_name
  LEFT JOIN user_ind_expressions e
    ON e.index_name  = b.index_name
   AND e.column_position = b.column_position
 WHERE a.table_name IN (SELECT tabela FROM migracao_rc_call_center m WHERE m.tipo = 'Parametrizacao')
 ORDER BY 1, 2, 3, 4, 5, 6;

SELECT a.table_name, a.index_name, a.index_type, a.uniqueness, a.partitioned, a.status,
       LISTAGG(b.column_name, ',') WITHIN GROUP (ORDER BY b.column_position) "COLUMNS"
  FROM user_indexes a
  LEFT JOIN user_ind_columns b
    ON b.index_name = a.index_name
 WHERE a.table_name IN (SELECT tabela FROM migracao_rc_call_center m WHERE m.tipo = 'Parametrizacao')
 GROUP BY a.table_name, a.index_name, a.index_type, a.uniqueness, a.partitioned, a.status
 ORDER BY 1, 2, 3, 4;    