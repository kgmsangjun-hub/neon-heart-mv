#!/usr/bin/env bash
# 실제 인물 이미지 3장을 넣어 미리보기(preview.jpg)와 60초 MP4를 헤드리스 크롬으로 생성
set -u
cd "$(dirname "$0")"
OUT_MP4="${1:-hotel-twist-ep1-60s.mp4}"
AB=agent-browser
$AB open "file://$PWD/index.html" >/dev/null 2>&1
$AB eval "window.__img=['','',''];'ok'" >/dev/null
i=0
for f in cast1-seoyun-wife.jpg cast2-dohyun-husband.jpg cast3-harin-manager.png; do
  b=$(base64 -w0 "$f"); L=${#b}; o=0
  while [ $o -lt $L ]; do $AB eval "window.__img[$i]+='${b:$o:100000}';0" >/dev/null 2>&1 || echo "inject fail $f"; o=$((o+100000)); done
  i=$((i+1))
done
$AB eval "(async()=>{await audioReady;const mt=['image/jpeg','image/jpeg','image/png'];for(let i=0;i<3;i++)await loadCast(i,'data:'+mt[i]+';base64,'+window.__img[i]);
const st=[0,1,2].map(i=>document.getElementById('s'+i).textContent);const dims=CAST.map(c=>['front','back','close'].map(k=>c[k].img.width+'x'+c[k].img.height).join(' '));
const ts=[2,6.5,11.5,16,19.5,21.5,25,29.5,33,35.5,38,42,46,52,55.5,58.8];const sh=document.createElement('canvas');sh.width=8*240;sh.height=2*427;const sg=sh.getContext('2d');
ts.forEach((t,i)=>{renderAt(t);sg.drawImage(document.getElementById('c'),(i%8)*240,Math.floor(i/8)*427,240,427);sg.fillStyle='#ff0';sg.font='bold 18px sans-serif';sg.fillText(t+'s',(i%8)*240+6,Math.floor(i/8)*427+200)});
window.__sheet=sh.toDataURL('image/jpeg',0.85);return JSON.stringify({st,dims})})()" 2>&1
$AB eval "window.__sheet" > _s.txt 2>&1
python3 -c "
import base64,re;d=open('_s.txt').read();m=re.search(r'base64,([A-Za-z0-9+/=]+)',d);open('preview.jpg','wb').write(base64.b64decode(m.group(1)));print('preview saved')"
rm -f _s.txt
[ "${SKIP_MP4:-0}" = "1" ] && exit 0
$AB eval "exportMP4(()=>0,{light:false}).then(async b=>{const buf=new Uint8Array(await b.arrayBuffer());let s='';for(let i=0;i<buf.length;i+=32768)s+=String.fromCharCode.apply(null,buf.subarray(i,i+32768));window.__b64=btoa(s);window.__done=JSON.stringify({bytes:buf.length,info:getExportInfo()})}).catch(e=>window.__done='ERR '+e.message);'started'" >/dev/null 2>&1
for n in $(seq 1 150); do sleep 10; r=$($AB eval "window.__done||'wait'" 2>&1); case "$r" in *bytes*|*ERR*) echo "$r"; break;; esac; done
L=$($AB eval "window.__b64.length" 2>&1); N=$(( (L + 2599999) / 2600000 )); rm -f _b64.txt
for k in $(seq 0 $((N-1))); do $AB eval "window.__b64.slice($k*2600000,($k+1)*2600000)" 2>/dev/null | python3 -c "import sys,json;sys.stdout.write(json.loads(sys.stdin.read()))" >> _b64.txt; done
python3 -c "
import base64;b=base64.b64decode(open('_b64.txt').read());open('$OUT_MP4','wb').write(b);print('mp4 written',len(b))"
rm -f _b64.txt
