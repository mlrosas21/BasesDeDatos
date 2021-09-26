SELECT EnvioVia, SUM(Transporte) as 'Transporte Total'
FROM facturas
GROUP BY EnvioVia