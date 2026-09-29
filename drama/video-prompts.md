# 1207호의 비밀 EP.1 — AI 영상 프롬프트 (15초 × 4컷 = 60초)

Sora, Kling, Veo, Runway, Hailuo 같은 AI 영상 도구용 프롬프트입니다. 도구에 캐릭터 시트 3장(`cast1~3`)을 참조 이미지로 넣고, 컷마다 아래 프롬프트를 붙여 넣으세요.

- 공통 설정: 9:16 세로, 1080×1920, 24fps, 한국 드라마 톤, 영화 같은 조명
- 한 번에 15초를 만들 수 없는 도구(최대 5~10초)는 각 컷의 `[0–5s]` 같은 구간을 따로 생성해서 이어 붙이세요.
- 대사는 한국어로 두었습니다. 립싱크가 안 되는 도구는 대사 줄을 지우고 자막으로 넣으세요.

## 공통 캐릭터 설명 (모든 컷 앞에 붙이기)

```
Characters (keep faces, hair and outfits identical to the reference images):
- SEOYUN (wife, Korean woman, early 30s): long straight black hair with soft waves, small hoop earrings, black tailored blazer, black shirt, black tie, black mini skirt, black heels. Elegant, restrained.
- DOHYUN (husband, Korean man, mid 30s): slicked-back black hair, sharp jawline, black suit, black shirt, black tie, black leather gloves. Calm, unreadable expression.
- HARIN (adult hotel event manager, Korean woman, late 20s): long black wavy hair, charcoal hotel staff blazer, white shirt, grey striped bow, grey plaid skirt, gold "LUMIÈRE" name badge. Professional and polite.
Setting: HOTEL LUMIÈRE, a luxury hotel in Seoul at night.
Style: vertical 9:16, cinematic Korean drama, shallow depth of field, anamorphic lens flare, warm gold lobby light vs. cool blue shadows, film grain, 24fps.
```

## 컷 1 (0–15초) — 의심: 호텔 로비

```
[0–5s] Night. Wide shot of a grand hotel lobby: golden pillars, crystal chandeliers, polished marble floor reflecting warm light, tall windows with Seoul night skyline. DOHYUN walks away from camera toward the front desk, steady slow steps. Slow dolly-in.
[5–10s] Medium shot at the front desk "HOTEL LUMIÈRE". HARIN smiles professionally and slides a black key card marked "1207" across the counter. DOHYUN takes it with his gloved hand and glances around cautiously. Close-up insert of the key card.
[10–15s] SEOYUN hides behind a golden pillar in the foreground, half her face in shadow, breathing fast, eyes locked on her husband. Handheld camera, slight shake, rack focus from pillar edge to her eyes.
Audio: low tense piano motif, soft lobby ambience, heartbeat starting at 10s.
On-screen text (top): "결혼 7주년 기념일, 남편이 호텔에 있었다"
SEOYUN (whisper, 12s): "…1207호."
```

## 컷 2 (15–30초) — 오해: 밀담과 눈물

```
[0–6s] Over-the-shoulder shot from behind SEOYUN toward the front desk. DOHYUN leans in and speaks quietly to HARIN; she nods reassuringly. Warm gold light, shallow focus on the two of them.
DOHYUN (low voice): "그 사람은 절대 모르게 해 주세요."
HARIN (smiling): "걱정 마세요. 준비는 다 끝났어요."
[6–11s] Extreme close-up of SEOYUN's face, cool blue light, a single tear rolls down her cheek, lips trembling. Out-of-focus chandelier bokeh behind her.
SEOYUN (barely audible): "7년이… 전부 거짓말이었어?"
[11–15s] SEOYUN turns and walks decisively toward the elevators, back to camera, heels clicking on marble. Camera follows low from behind.
Audio: minor-key strings swell, heartbeat, heel clicks.
```

## 컷 3 (30–45초) — 반전①: 1207호의 문

```
[0–5s] Inside a brass-and-mirror elevator. SEOYUN stands facing the closed doors, back to camera. Floor indicator counts up to 12, orange glow. Tight framing, her reflection in the doors. Heartbeat gets faster. Soft "ding".
[5–9s] Long hotel corridor with red carpet and warm wall sconces, one-point perspective. SEOYUN walks to door 1207 (gold number plate). She pushes the slightly open door. Slow push-in on the door.
[9–15s] Door swings open — bright white flash — reveal: a candle-lit suite decorated for an anniversary, gold and pink balloons, a heart of red rose petals on the bed, banner "HAPPY 7th ANNIVERSARY", Seoul night view through the window. Confetti bursts. DOHYUN smiles warmly, holding a bouquet. HARIN stands aside holding a party popper, clapping.
DOHYUN: "서프라이즈. 7주년 축하해, 서윤아."
Audio: impact hit on the door flash, then a warm major-key music box melody.
```

## 컷 4 (45–60초) — 반전②: 울리는 휴대폰

```
[0–5s] Close-up of SEOYUN, eyes wet, relieved laugh, soft warm candlelight. HARIN in the background, politely bowing.
HARIN: "이벤트 매니저 하린입니다. 남편분이 3주 동안 준비하셨어요."
SEOYUN (laughing through tears): "…바보. 난 진짜…"
[5–10s] DOHYUN turns to light the candles. SEOYUN's phone vibrates in her hand. Insert close-up of the lock screen: "9:07", message notification from "J ♥": "오늘 못 와? 1208호에서 기다릴게." She quickly turns the phone face down.
[10–15s] Slow push-in on SEOYUN's face as the warm light shifts to deep red; the tears are gone, a faint knowing smile. Cut to black. Title card: "1207호의 비밀" / "EP.2에서 계속".
Audio: warm music stops abruptly, phone buzz, low dissonant drone, clock ticking, final bass hit on the title.
```

## 네거티브 프롬프트 (지원하는 도구만)

```
distorted face, extra fingers, deformed hands, face morphing between shots, changing outfit, text artifacts, watermark, low resolution, oversaturated, cartoon, anime, nudity, suggestive poses
```

## 이어 붙이기 팁

- 컷 사이 전환: 1→2 암전 컷, 2→3 엘리베이터 문이 닫히며 전환, 3은 흰색 플래시로 반전 공개, 4는 적색 그레이딩 후 암전.
- 같은 인물이 컷마다 달라 보이면 도구의 캐릭터 참조(Character reference / Elements / Ingredients) 기능에 시트 이미지를 넣고, 첫 컷의 마지막 프레임을 다음 컷의 시작 이미지로 쓰세요.
