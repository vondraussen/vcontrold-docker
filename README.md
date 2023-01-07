# Docker Image Creator vcontrol

`docker build -t vondraussen/vcontrold:v0.98.10 .`

`docker exec -it vcontrold-hassio_vcontrol_1 ./vclient -h 127.0.0.1:3002 -c getTempA`
`docker exec -it vcontrold-hassio_vcontrol_1 ./vclient -h 127.0.0.1:3002 -c getDevType`

```
docker exec -it vcontrold-hassio_vcontrol_1 ./vclient -h 127.0.0.1:3002 -c getTempA,getTempAtp,getTempAged,getTempWWist,getTempWWsoll,getTempStp2,getBrennerStatus,getLeistungIst,getTempVListM1,getTempVLsollM1,getTempRL17A,getTempRaumNorSollM1,getTempRaumRedSollM1,getPumpeStatusM1,getPumpeStatusIntern,getPumpeDrehzahlIntern,getBetriebArt,getBetriebSparM1,getStatusFrostM1,getStatusStoerung,getAnlagenschema,getVentilStatus
```

```
docker exec -it vcontrold-hassio_vcontrol_1 ./vclient -j -h 127.0.0.1:3002 -c getTempA,getTempAtp,getTempAged,getTempWWist,getTempWWsoll,getTempStp2,getBrennerStatus,getLeistungIst,getTempVListM1,getTempVLsollM1,getTempRL17A,getTempRaumNorSollM1,getTempRaumRedSollM1,getPumpeStatusM1,getPumpeStatusIntern,getPumpeDrehzahlIntern,getBetriebArt,getBetriebSparM1,getStatusFrostM1,getStatusStoerung,getAnlagenschema
```