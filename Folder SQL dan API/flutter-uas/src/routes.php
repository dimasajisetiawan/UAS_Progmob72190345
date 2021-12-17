<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app) {
    $container = $app->getContainer();

    $app->get('/[{name}]', function (Request $request, Response $response, array $args) use ($container) {
        // Sample log message
        $container->get('logger')->info("Slim-Skeleton '/' route");

        // Render index view
        return $container->get('renderer')->render($response, 'index.phtml', $args);
    });
    $app->get("/api/flutter_uas72190345/", function (Request $request, Response $response){
        $sql = "SELECT judul_berita,isi_berita,tanggal_berita,nama_penulis,kategori FROM news";
        $stmt = $this->db->prepare($sql);
        $stmt ->execute();
        $result = $stmt->fetchAll();
        return $response->withJson($result, 200);
    });
    
    $app->get("/api/progmob/mhs/{nim_progmob}/{nim_krs}", function (Request $request, Response $response, $args){
        $nim_progmob = $args["nim_progmob"];
        $nim_krs = $args["nim_krs"];
        $sql = "SELECT id,nama,nim,alamat,email,foto FROM progmob_mhs WHERE nim_progmob = :nim_progmob AND nim = :nim_krs";
        $stmt = $this->db->prepare($sql);
        $stmt->execute([":nim_progmob" => $nim_progmob, "nim" => $nim_krs]);
        $result = $stmt->fetchAll();
        return $response->withJson($result, 200);
    });
};
