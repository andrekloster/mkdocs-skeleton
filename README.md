# mkdocs_skeleton

* Repository klonen

```
git clone https://github.com/andrekloster/mkdocs_skeleton.git
cd mkdocs_skeleton
```

* Docker Image bauen
```
docker build -t mkdocs_skeleton_test .
```

* Docker Container starten
```
docker run -d -p 8080:8080 mkdocs_skeleton_test
```

* Mkdocs im Browser aufrufen
```
http://<EXTERNE-DOCKERHOST-IP>:8080
```