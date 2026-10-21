<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>под ногами · Алматы · Городской архив</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400&family=Inter:wght@300;400;500;600&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
<style>
  :root{
    --bg:#f1e9d8;
    --bg-2:#e8ddc6;
    --paper:#f7f0df;
    --ink:#2a2420;
    --ink-soft:#5a4f45;
    --muted:#8a7d6d;
    --line:#c9b894;
    --accent:#b8543a;
    --accent-dark:#8a3a26;
    --iron:#3a3633;
    --iron-2:#5a524d;
    --shadow: 0 1px 0 rgba(42,36,32,.06), 0 20px 40px -20px rgba(42,36,32,.25);
  }

  *{box-sizing:border-box;margin:0;padding:0}
  html{scroll-behavior:smooth}
  body{
    background:var(--bg);
    color:var(--ink);
    font-family:'Inter',system-ui,sans-serif;
    font-size:16px;
    line-height:1.6;
    font-weight:400;
    overflow-x:hidden;
    background-image:
      radial-gradient(circle at 20% 10%, rgba(184,84,58,.04) 0%, transparent 40%),
      radial-gradient(circle at 80% 80%, rgba(58,54,51,.05) 0%, transparent 40%);
  }

  /* Зернистость бумаги */
  body::before{
    content:"";
    position:fixed;inset:0;
    pointer-events:none;
    background-image:url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='200' height='200'><filter id='n'><feTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='2' stitchTiles='stitch'/><feColorMatrix values='0 0 0 0 0.16  0 0 0 0 0.14  0 0 0 0 0.12  0 0 0 0.06 0'/></filter><rect width='100%' height='100%' filter='url(%23n)'/></svg>");
    opacity:.5;
    mix-blend-mode:multiply;
    z-index:1;
  }

  .container{max-width:1200px;margin:0 auto;padding:0 32px;position:relative;z-index:2}

  /* ===== НАВИГАЦИЯ ===== */
  nav.top{
    position:fixed;top:0;left:0;right:0;
    padding:18px 32px;
    display:flex;justify-content:space-between;align-items:center;
    z-index:100;
    background:rgba(241,233,216,.85);
    backdrop-filter:blur(12px);
    border-bottom:1px solid rgba(201,184,148,.4);
  }
  nav .logo{
    font-family:'Cormorant Garamond',serif;
    font-size:20px;font-weight:600;
    letter-spacing:.02em;
  }
  nav .logo span{color:var(--accent)}
  nav ul{display:flex;gap:28px;list-style:none}
  nav ul a{
    color:var(--ink-soft);
    text-decoration:none;
    font-size:13px;
    letter-spacing:.08em;
    text-transform:uppercase;
    transition:color .2s;
  }
  nav ul a:hover{color:var(--accent)}
  nav .src{
    font-size:12px;color:var(--muted);
    text-decoration:none;letter-spacing:.05em;
  }
  nav .src:hover{color:var(--accent)}

  /* ===== HERO ===== */
  .hero{
    min-height:100vh;
    display:flex;flex-direction:column;justify-content:center;
    padding:140px 0 80px;
    position:relative;
  }
  .hero .tag{
    font-family:'JetBrains Mono',monospace;
    font-size:11px;letter-spacing:.3em;
    color:var(--muted);
    text-transform:uppercase;
    margin-bottom:32px;
  }
  .hero h1{
    font-family:'Cormorant Garamond',serif;
    font-size:clamp(56px,10vw,140px);
    font-weight:500;
    line-height:.95;
    letter-spacing:-.02em;
    margin-bottom:40px;
  }
  .hero h1 em{
    font-style:italic;
    color:var(--accent);
    font-weight:400;
  }
  .hero .lead{
    max-width:560px;
    font-size:18px;
    color:var(--ink-soft);
    margin-bottom:48px;
  }
  .hero .lead strong{color:var(--ink);font-weight:500}
  .cta{
    display:inline-flex;align-items:center;gap:12px;
    padding:18px 32px;
    background:var(--ink);
    color:var(--paper);
    text-decoration:none;
    font-size:14px;letter-spacing:.1em;text-transform:uppercase;
    border-radius:2px;
    transition:all .3s;
  }
  .cta:hover{background:var(--accent);transform:translateY(-2px)}
  .cta .arr{transition:transform .3s}
  .cta:hover .arr{transform:translateY(4px)}

  .hero-meta{
    position:absolute;
    bottom:60px;right:32px;
    text-align:right;
    font-family:'JetBrains Mono',monospace;
    font-size:11px;
    color:var(--muted);
    letter-spacing:.1em;
  }
  .hero-meta .big{
    font-family:'Cormorant Garamond',serif;
    font-size:48px;color:var(--accent);
    letter-spacing:0;line-height:1;
    margin-bottom:8px;
  }

  /* ===== СЕКЦИИ ===== */
  section{padding:120px 0;position:relative}
  .sec-num{
    font-family:'JetBrains Mono',monospace;
    font-size:11px;letter-spacing:.3em;
    color:var(--accent);
    text-transform:uppercase;
    margin-bottom:24px;
  }
  .sec-title{
    font-family:'Cormorant Garamond',serif;
    font-size:clamp(40px,6vw,72px);
    font-weight:500;
    line-height:1;
    letter-spacing:-.01em;
    margin-bottom:24px;
    max-width:900px;
  }
  .sec-title em{font-style:italic;color:var(--accent)}
  .sec-sub{
    font-size:18px;color:var(--ink-soft);
    max-width:620px;margin-bottom:64px;
  }

  /* ===== ЭКСКУРС / INTRO ===== */
  .intro{
    background:var(--bg-2);
    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);
    padding:80px 0;
  }
  .intro-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:80px;
    align-items:center;
  }
  .intro-left .coords{
    font-family:'JetBrains Mono',monospace;
    font-size:12px;color:var(--muted);
    letter-spacing:.15em;
    margin-bottom:12px;
  }
  .intro-left .city{
    font-family:'Cormorant Garamond',serif;
    font-size:48px;font-weight:500;
    margin-bottom:8px;
  }
  .intro-left .country{
    font-size:13px;letter-spacing:.2em;
    text-transform:uppercase;color:var(--ink-soft);
  }
  .intro-right{
    padding:40px;
    background:var(--paper);
    border:1px solid var(--line);
    box-shadow:var(--shadow);
  }
  .intro-right .label{
    font-family:'JetBrains Mono',monospace;
    font-size:10px;letter-spacing:.3em;
    color:var(--accent);
    margin-bottom:16px;
  }
  .intro-right .desc{
    font-family:'Cormorant Garamond',serif;
    font-size:22px;line-height:1.4;
    font-style:italic;
    margin-bottom:24px;
  }
  .intro-right .source{
    font-size:12px;color:var(--muted);
    padding-top:16px;
    border-top:1px solid var(--line);
  }
  .intro-right .source a{color:var(--accent);text-decoration:none}

  /* ===== ГЛАВНЫЙ АРТЕФАКТ (ЛЮК) ===== */
  .artifact-wrap{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:80px;
    align-items:center;
  }
  .manhole-stage{
    position:relative;
    aspect-ratio:1;
    max-width:560px;
    margin:0 auto;
  }
  .manhole{
    width:100%;height:100%;
    border-radius:50%;
    background:
      radial-gradient(circle at 30% 30%, #6a625b 0%, #3a3633 40%, #1a1816 100%);
    position:relative;
    box-shadow:
      inset 0 0 60px rgba(0,0,0,.6),
      inset 0 0 0 20px rgba(0,0,0,.2),
      0 30px 60px -20px rgba(0,0,0,.5);
  }
  .manhole::before{
    content:"";
    position:absolute;inset:20px;
    border-radius:50%;
    border:2px solid rgba(0,0,0,.3);
  }
  .manhole::after{
    content:"";
    position:absolute;inset:0;
    border-radius:50%;
    background-image:url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='100' height='100'><filter id='n'><feTurbulence type='fractalNoise' baseFrequency='0.8' numOctaves='3'/></filter><rect width='100%' height='100%' filter='url(%23n)' opacity='0.4'/></svg>");
    mix-blend-mode:overlay;
    opacity:.6;
  }
  .manhole-text{
    position:absolute;inset:0;
    display:flex;flex-direction:column;
    align-items:center;justify-content:center;
    color:#d4c9b0;
    text-align:center;
    font-family:'Cormorant Garamond',serif;
    text-shadow:0 1px 2px rgba(0,0,0,.5);
    pointer-events:none;
  }
  .manhole-text .top{
    font-size:14px;letter-spacing:.3em;
    text-transform:uppercase;
    margin-bottom:12px;
    opacity:.8;
  }
  .manhole-text .year{
    font-size:72px;font-weight:600;
    letter-spacing:.05em;
    line-height:1;
  }
  .manhole-text .city{
    font-size:20px;letter-spacing:.2em;
    margin-top:12px;
    font-style:italic;
  }
  .manhole-text .bottom{
    font-size:11px;letter-spacing:.25em;
    margin-top:24px;
    opacity:.7;
    text-transform:uppercase;
  }

  /* Метки */
  .marker{
    position:absolute;
    width:32px;height:32px;
    border-radius:50%;
    background:var(--accent);
    color:var(--paper);
    display:flex;align-items:center;justify-content:center;
    font-family:'JetBrains Mono',monospace;
    font-size:13px;font-weight:500;
    cursor:pointer;
    z-index:10;
    box-shadow:0 4px 12px rgba(184,84,58,.4), 0 0 0 4px rgba(184,84,58,.15);
    transition:all .3s;
    animation:pulse 2.5s infinite;
  }
  @keyframes pulse{
    0%,100%{box-shadow:0 4px 12px rgba(184,84,58,.4), 0 0 0 4px rgba(184,84,58,.15)}
    50%{box-shadow:0 4px 12px rgba(184,84,58,.4), 0 0 0 12px rgba(184,84,58,.05)}
  }
  .marker:hover{transform:scale(1.15);background:var(--accent-dark)}
  .marker.active{background:var(--ink);animation:none}
  .m1{top:18%;left:22%}
  .m2{top:18%;right:22%}
  .m3{top:50%;left:12%}
  .m4{top:50%;right:12%}
  .m5{bottom:18%;left:50%;transform:translateX(-50%)}

  .marker-info{
    margin-top:32px;
    padding:32px;
    background:var(--paper);
    border:1px solid var(--line);
    min-height:180px;
    box-shadow:var(--shadow);
  }
  .marker-info .m-label{
    font-family:'JetBrains Mono',monospace;
    font-size:11px;letter-spacing:.3em;
    color:var(--accent);
    margin-bottom:12px;
  }
  .marker-info h4{
    font-family:'Cormorant Garamond',serif;
    font-size:28px;font-weight:500;
    margin-bottom:16px;
  }
  .marker-info p{
    color:var(--ink-soft);
    font-size:15px;
    line-height:1.7;
  }

  /* ===== СЛОИ ВРЕМЕНИ ===== */
  .timeline{
    background:var(--bg-2);
    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);
  }
  .years{
    display:flex;
    gap:4px;
    margin-bottom:48px;
    flex-wrap:wrap;
  }
  .year-btn{
    padding:16px 28px;
    background:transparent;
    border:1px solid var(--line);
    font-family:'Cormorant Garamond',serif;
    font-size:24px;
    color:var(--ink-soft);
    cursor:pointer;
    transition:all .3s;
    flex:1;min-width:120px;
  }
  .year-btn:hover{background:var(--paper);color:var(--ink)}
  .year-btn.active{
    background:var(--ink);
    color:var(--paper);
    border-color:var(--ink);
  }
  .year-content{
    padding:48px;
    background:var(--paper);
    border:1px solid var(--line);
    box-shadow:var(--shadow);
  }
  .year-content .y-head{
    display:flex;justify-content:space-between;
    align-items:flex-start;
    margin-bottom:24px;
    padding-bottom:24px;
    border-bottom:1px solid var(--line);
  }
  .year-content .y-num{
    font-family:'Cormorant Garamond',serif;
    font-size:64px;font-weight:500;
    color:var(--accent);
    line-height:1;
  }
  .year-content .y-tag{
    font-family:'JetBrains Mono',monospace;
    font-size:11px;letter-spacing:.2em;
    color:var(--muted);
    text-transform:uppercase;
    text-align:right;
  }
  .year-content h3{
    font-family:'Cormorant Garamond',serif;
    font-size:32px;font-weight:500;
    margin-bottom:16px;
  }
  .year-content p{
    color:var(--ink-soft);
    font-size:16px;line-height:1.8;
    margin-bottom:16px;
  }
  .year-content .cite{
    font-size:13px;
    color:var(--muted);
    font-style:italic;
    padding-top:16px;
    border-top:1px solid var(--line);
    margin-top:24px;
  }
  .year-content .cite a{color:var(--accent);text-decoration:none}

  /* ===== КОЛЛЕКЦИЯ ===== */
  .filters{
    display:flex;gap:12px;margin-bottom:32px;flex-wrap:wrap;
    align-items:center;
  }
  .filter-btn{
    padding:10px 20px;
    background:transparent;
    border:1px solid var(--line);
    font-size:13px;
    color:var(--ink-soft);
    cursor:pointer;
    transition:all .2s;
    letter-spacing:.05em;
  }
  .filter-btn:hover{background:var(--paper)}
  .filter-btn.active{background:var(--ink);color:var(--paper);border-color:var(--ink)}
  .search{
    margin-left:auto;
    padding:10px 16px;
    border:1px solid var(--line);
    background:var(--paper);
    font-family:'Inter',sans-serif;
    font-size:14px;
    color:var(--ink);
    min-width:240px;
  }
  .search::placeholder{color:var(--muted)}

  .cards{
    display:grid;
    grid-template-columns:repeat(auto-fill,minmax(320px,1fr));
    gap:24px;
  }
  .card{
    background:var(--paper);
    border:1px solid var(--line);
    overflow:hidden;
    transition:all .3s;
    cursor:pointer;
    display:flex;flex-direction:column;
  }
  .card:hover{
    transform:translateY(-4px);
    box-shadow:var(--shadow);
    border-color:var(--accent);
  }
  .card-img{
    aspect-ratio:4/3;
    background:var(--iron);
    position:relative;
    overflow:hidden;
    display:flex;align-items:center;justify-content:center;
  }
  .card-img svg{width:80%;height:80%;opacity:.85}
  .card-type{
    position:absolute;top:12px;left:12px;
    padding:4px 10px;
    background:rgba(241,233,216,.9);
    font-family:'JetBrains Mono',monospace;
    font-size:10px;letter-spacing:.2em;
    color:var(--accent);
    text-transform:uppercase;
    backdrop-filter:blur(4px);
  }
  .card-body{padding:24px;flex:1;display:flex;flex-direction:column}
  .card-num{
    font-family:'JetBrains Mono',monospace;
    font-size:11px;letter-spacing:.2em;
    color:var(--muted);
    margin-bottom:8px;
  }
  .card-title{
    font-family:'Cormorant Garamond',serif;
    font-size:24px;font-weight:500;
    margin-bottom:12px;
    line-height:1.2;
  }
  .card-desc{
    font-size:14px;color:var(--ink-soft);
    line-height:1.6;
    flex:1;
  }
  .card-link{
    margin-top:16px;
    font-size:12px;
    color:var(--accent);
    letter-spacing:.1em;
    text-transform:uppercase;
  }

  /* ===== КАРТА ===== */
  .map-section{
    background:var(--bg-2);
    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);
  }
  .map-wrap{
    display:grid;
    grid-template-columns:2fr 1fr;
    gap:40px;
    align-items:start;
  }
  .map-box{
    background:var(--paper);
    border:1px solid var(--line);
    padding:32px;
    box-shadow:var(--shadow);
    position:relative;
  }
  .map-header{
    display:flex;justify-content:space-between;
    padding-bottom:16px;margin-bottom:24px;
    border-bottom:1px solid var(--line);
    font-family:'JetBrains Mono',monospace;
    font-size:11px;letter-spacing:.2em;
    color:var(--muted);
    text-transform:uppercase;
  }
  .map-svg{width:100%;height:auto;display:block}
  .map-point{
    fill:var(--accent);
    cursor:pointer;
    transition:all .2s;
  }
  .map-point:hover{fill:var(--accent-dark);r:8}
  .map-point.active{fill:var(--ink);r:10}
  .map-label{
    font-family:'JetBrains Mono',monospace;
    font-size:10px;fill:var(--ink-soft);
  }
  .map-sidebar{
    background:var(--paper);
    border:1px solid var(--line);
    padding:32px;
    box-shadow:var(--shadow);
  }
  .map-sidebar h4{
    font-family:'Cormorant Garamond',serif;
    font-size:28px;margin-bottom:24px;
  }
  .point-item{
    padding:16px 0;
    border-bottom:1px solid var(--line);
    cursor:pointer;
    transition:all .2s;
  }
  .point-item:hover{padding-left:8px}
  .point-item.active{padding-left:12px;border-left:3px solid var(--accent)}
  .point-item .p-num{
    font-family:'JetBrains Mono',monospace;
    font-size:11px;color:var(--accent);
    letter-spacing:.2em;
  }
  .point-item .p-name{
    font-family:'Cormorant Garamond',serif;
    font-size:20px;margin:4px 0;
  }
  .point-item .p-desc{
    font-size:13px;color:var(--ink-soft);
    line-height:1.5;
  }
  .point-detail{
    margin-top:24px;
    padding-top:24px;
    border-top:1px dashed var(--line);
    font-size:13px;
    color:var(--muted);
    display:none;
  }
  .point-detail.show{display:block}
  .point-detail .coords{
    font-family:'JetBrains Mono',monospace;
    font-size:11px;letter-spacing:.1em;
    color:var(--accent);
    margin-bottom:8px;
  }

  /* ===== АЛФАВИТ ===== */
  .alphabet-grid{
    display:grid;
    grid-template-columns:repeat(auto-fill,minmax(180px,1fr));
    gap:16px;
  }
  .letter-card{
    background:var(--paper);
    border:1px solid var(--line);
    padding:24px;
    aspect-ratio:1;
    display:flex;flex-direction:column;
    justify-content:space-between;
    cursor:pointer;
    transition:all .3s;
  }
  .letter-card:hover{
    background:var(--ink);
    color:var(--paper);
    transform:translateY(-4px);
  }
  .letter-card:hover .l-desc{color:rgba(247,240,223,.8)}
  .letter-big{
    font-family:'Cormorant Garamond',serif;
    font-size:72px;font-weight:500;
    line-height:1;
  }
  .letter-name{
    font-family:'JetBrains Mono',monospace;
    font-size:11px;letter-spacing:.15em;
    text-transform:uppercase;
    margin-top:12px;
  }
  .l-desc{
    font-size:13px;
    color:var(--ink-soft);
    line-height:1.5;
    margin-top:16px;
  }

  /* ===== ИССЛЕДОВАНИЕ ===== */
  .research{
    background:var(--bg-2);
    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);
  }
  .research-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:60px;
  }
  .r-block{
    padding:32px;
    background:var(--paper);
    border:1px solid var(--line);
    margin-bottom:24px;
  }
  .r-block .r-label{
    font-family:'JetBrains Mono',monospace;
    font-size:11px;letter-spacing:.3em;
    color:var(--accent);
    margin-bottom:16px;
    text-transform:uppercase;
  }
  .r-block h4{
    font-family:'Cormorant Garamond',serif;
    font-size:24px;font-weight:500;
    line-height:1.3;
    margin-bottom:16px;
  }
  .r-block p{
    font-size:15px;color:var(--ink-soft);
    line-height:1.7;
  }
  .steps{display:flex;flex-direction:column;gap:24px}
  .step{
    display:grid;
    grid-template-columns:60px 1fr;
    gap:24px;
    padding:24px;
    background:var(--paper);
    border:1px solid var(--line);
  }
  .step-num{
    font-family:'Cormorant Garamond',serif;
    font-size:48px;font-weight:500;
    color:var(--accent);
    line-height:1;
  }
  .step h4{
    font-family:'Cormorant Garamond',serif;
    font-size:22px;margin-bottom:8px;
  }
  .step p{font-size:14px;color:var(--ink-soft);line-height:1.6}

  /* ===== ДНЕВНИК ===== */
  .diary{
    background:var(--paper);
    border:1px solid var(--line);
    padding:48px;
    box-shadow:var(--shadow);
  }
  .diary-head{
    display:flex;justify-content:space-between;
    align-items:center;
    margin-bottom:32px;
    padding-bottom:24px;
    border-bottom:1px solid var(--line);
    flex-wrap:wrap;gap:16px;
  }
  .diary-head h3{
    font-family:'Cormorant Garamond',serif;
    font-size:32px;
  }
  .diary-actions{display:flex;gap:12px;flex-wrap:wrap}
  .btn{
    padding:10px 20px;
    background:transparent;
    border:1px solid var(--line);
    font-size:13px;
    color:var(--ink);
    cursor:pointer;
    transition:all .2s;
    letter-spacing:.05em;
    font-family:'Inter',sans-serif;
  }
  .btn:hover{background:var(--bg-2)}
  .btn.primary{background:var(--ink);color:var(--paper);border-color:var(--ink)}
  .btn.primary:hover{background:var(--accent)}

  .diary-form{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:16px;
    margin-bottom:32px;
    padding:24px;
    background:var(--bg-2);
    border:1px dashed var(--line);
  }
  .diary-form input, .diary-form textarea{
    padding:12px;
    border:1px solid var(--line);
    background:var(--paper);
    font-family:'Inter',sans-serif;
    font-size:14px;
    color:var(--ink);
  }
  .diary-form textarea{grid-column:1/-1;min-height:80px;resize:vertical}
  .diary-form input:focus, .diary-form textarea:focus{
    outline:none;border-color:var(--accent);
  }

  .entries{display:flex;flex-direction:column;gap:16px}
  .entry{
    padding:20px;
    background:var(--bg-2);
    border-left:3px solid var(--accent);
  }
  .entry-head{
    display:flex;justify-content:space-between;
    margin-bottom:8px;
    font-family:'JetBrains Mono',monospace;
    font-size:11px;
    color:var(--muted);
    letter-spacing:.1em;
  }
  .entry h5{
    font-family:'Cormorant Garamond',serif;
    font-size:20px;margin-bottom:4px;
  }
  .entry p{font-size:14px;color:var(--ink-soft);line-height:1.6}
  .entry-del{
    background:none;border:none;
    color:var(--muted);cursor:pointer;
    font-size:18px;
  }
  .entry-del:hover{color:var(--accent)}
  .empty{
    text-align:center;padding:40px;
    color:var(--muted);
    font-style:italic;
  }

  /* ===== ФУТЕР ===== */
  footer{
    padding:80px 0 40px;
    background:var(--ink);
    color:var(--paper);
    text-align:center;
  }
  footer .f-title{
    font-family:'Cormorant Garamond',serif;
    font-size:clamp(40px,6vw,80px);
    font-weight:500;
    line-height:1;
    margin-bottom:24px;
  }
  footer .f-title em{font-style:italic;color:var(--accent)}
  footer .f-sub{
    font-size:16px;
    opacity:.7;
    margin-bottom:48px;
  }
  footer .f-links{
    display:flex;justify-content:center;gap:32px;
    margin-bottom:48px;
    flex-wrap:wrap;
  }
  footer .f-links a{
    color:var(--paper);
    text-decoration:none;
    font-size:13px;
    letter-spacing:.1em;
    text-transform:uppercase;
    opacity:.7;
    transition:opacity .2s;
  }
  footer .f-links a:hover{opacity:1;color:var(--accent)}
  footer .f-meta{
    padding-top:32px;
    border-top:1px solid rgba(247,240,223,.15);
    font-size:12px;
    opacity:.5;
    letter-spacing:.1em;
  }

  /* ===== АДАПТИВ ===== */
  @media (max-width:900px){
    nav ul{display:none}
    .intro-grid, .artifact-wrap, .map-wrap, .research-grid{
      grid-template-columns:1fr;gap:40px;
    }
    .hero-meta{position:static;text-align:left;margin-top:40px}
    section{padding:80px 0}
    .container{padding:0 20px}
    .diary{padding:24px}
    .diary-form{grid-template-columns:1fr}
    .search{margin-left:0;width:100%}
  }

  /* Анимация появления */
  .fade-in{
    opacity:0;
    transform:translateY(20px);
    transition:all .8s ease;
  }
  .fade-in.visible{opacity:1;transform:translateY(0)}
</style>
</head>
<body>

<!-- ===== НАВИГАЦИЯ ===== -->
<nav class="top">
  <div class="logo">под <span>ногами</span> · АЛМАТЫ</div>
  <ul>
    <li><a href="#artifact">Артефакт</a></li>
    <li><a href="#timeline">Время</a></li>
    <li><a href="#collection">Коллекция</a></li>
    <li><a href="#map">Карта</a></li>
    <li><a href="#research">Исследование</a></li>
  </ul>
  <a href="#" class="src">Источники ↗</a>
</nav>

<!-- ===== HERO ===== -->
<header class="hero">
  <div class="container">
    <div class="tag">АЛМАТЫ · ГОРОДСКОЙ АРХИВ · ОДИН АРТЕФАКТ — ОДНА ИСТОРИЯ</div>
    <h1>под <em>ногами.</em></h1>
    <p class="lead">
      Мы привыкли смотреть на горы.<br>
      А что, если посмотреть вниз?<br><br>
      <strong>Чугунные люки хранят старые имена, даты и следы городской жизни.</strong>
      Прочитай одну крышку — и открой другой Алматы.
    </p>
    <a href="#artifact" class="cta">
      Начать исследование <span class="arr">↘</span>
    </a>
  </div>
  <div class="hero-meta">
    <div class="big">1936</div>
    <div>ГЛАВНЫЙ АРТЕФАКТ</div>
    <div>ЧУГУН · АЛМА-АТА</div>
  </div>
</header>

<!-- ===== INTRO ===== -->
<section class="intro" style="padding:80px 0">
  <div class="container">
    <div class="intro-grid">
      <div class="intro-left">
        <div class="coords">43°15′ С. Ш. / 76°57′ В. Д.</div>
        <div class="city">Алматы</div>
        <div class="country">Казахстан · координаты центра города</div>
      </div>
      <div class="intro-right">
        <div class="label">++СВИДЕТЕЛЬ ГОРОДА</div>
        <div class="desc">
          «Чугунная крышка люка: Трест Водоканал, Алма-Ата, 1936 год, Н.К.М.П.»
        </div>
        <div class="source">
          Фото из публикации Е. Морозовой · <a href="#">Vernoye-Almaty ↗</a>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ===== 01 АРТЕФАКТ ===== -->
<section id="artifact">
  <div class="container">
    <div class="sec-num">01 / ГЛАВНЫЙ АРТЕФАКТ</div>
    <h2 class="sec-title">Пять подсказок.<br>Один <em>город.</em></h2>
    <p class="sec-sub">
      На этой крышке есть свой маленький архив. Нажми на метку и прочитай его.
    </p>

    <div class="artifact-wrap">
      <div>
        <div class="manhole-stage">
          <div class="manhole">
            <div class="manhole-text">
              <div class="top">Трест Водоканал</div>
              <div class="year">1936</div>
              <div class="city">АЛМА-АТА</div>
              <div class="bottom">Н.К.М.П.</div>
            </div>
          </div>
          <div class="marker m1" data-m="1">1</div>
          <div class="marker m2" data-m="2">2</div>
          <div class="marker m3" data-m="3">3</div>
          <div class="marker m4" data-m="4">4</div>
          <div class="marker m5" data-m="5">5</div>
        </div>
      </div>

      <div>
        <div class="marker-info" id="markerInfo">
          <div class="m-label">ВЫБЕРИ МЕТКУ</div>
          <h4>Нажми на цифру на крышке</h4>
          <p>Пять надписей — пять исторических слоёв. Каждая метка раскрывает один элемент: организацию, город, дату, ведомство или технологию.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ===== 02 ВРЕМЯ ===== -->
<section id="timeline" class="timeline">
  <div class="container">
    <div class="sec-num">02 / СЛОИ ВРЕМЕНИ</div>
    <h2 class="sec-title">Город растёт.<br>Следы <em>остаются.</em></h2>
    <p class="sec-sub">От первых труб до городского дизайн-кода. Выбери год — история изменится.</p>

    <div class="years">
      <button class="year-btn" data-y="1901">1901</button>
      <button class="year-btn" data-y="1912">1912</button>
      <button class="year-btn active" data-y="1936">1936</button>
      <button class="year-btn" data-y="1950">1950?</button>
      <button class="year-btn" data-y="2026">2026</button>
    </div>

    <div class="year-content" id="yearContent">
      <div class="y-head">
        <div class="y-num" id="yNum">1936</div>
        <div class="y-tag" id="yTag">АЛМА-АТА / ГЛАВНЫЙ АРТЕФАКТ</div>
      </div>
      <h3 id="yTitle">История получает чугунный след</h3>
      <p id="yText">На главном экспонате — «1936 г.». По данным, приведённым Е. Морозовой, в 1936–1940 годах в городе проложили около 39 км водопроводных линий. Дата на крышке оказывается рядом с важным этапом расширения сетей.</p>
      <p id="yText2">1936 — дата известного экземпляра. Называть его первым люком города оснований недостаточно.</p>
      <div class="cite" id="yCite">Евгения Морозова · <a href="#">Hronika.kz ↗</a></div>
    </div>
  </div>
</section>

<!-- ===== 03 КОЛЛЕКЦИЯ ===== -->
<section id="collection">
  <div class="container">
    <div class="sec-num">03 / КОЛЛЕКЦИЯ ДЕТАЛЕЙ</div>
    <h2 class="sec-title">Не бывает<br>просто <em>люков.</em></h2>
    <p class="sec-sub">Сравни надписи, рисунки и назначения. У каждого предмета — свой вопрос к прошлому.</p>

    <div class="filters">
      <button class="filter-btn active" data-f="all">Все находки</button>
      <button class="filter-btn" data-f="water">Вода</button>
      <button class="filter-btn" data-f="phone">Связь</button>
      <button class="filter-btn" data-f="other">Другие</button>
      <input type="text" class="search" id="search" placeholder="Надпись, год или улица…">
    </div>

    <div class="cards" id="cards">
      <!-- Карточки генерируются JS -->
    </div>
  </div>
</section>

<!-- ===== 04 КАРТА ===== -->
<section id="map" class="map-section">
  <div class="container">
    <div class="sec-num">04 / ГЕОГРАФИЯ ПАМЯТИ</div>
    <h2 class="sec-title">У каждой истории<br>есть <em>место.</em></h2>
    <p class="sec-sub">Нажми на точку, чтобы открыть находку. Места фотосъёмки взяты из подписей и метаданных.</p>

    <div class="map-wrap">
      <div class="map-box">
        <div class="map-header">
          <span>АЛМАТЫ / СХЕМА НАХОДОК</span>
          <span>КООРДИНАТЫ СЪЁМКИ / WGS84</span>
        </div>
        <svg class="map-svg" viewBox="0 0 600 400" xmlns="http://www.w3.org/2000/svg">
          <!-- Сетка -->
          <defs>
            <pattern id="grid" width="60" height="60" patternUnits="userSpaceOnUse">
              <path d="M 60 0 L 0 0 0 60" fill="none" stroke="#c9b894" stroke-width="0.5" opacity="0.5"/>
            </pattern>
          </defs>
          <rect width="600" height="400" fill="url(#grid)"/>

          <!-- Улицы (схематично) -->
          <g stroke="#8a7d6d" stroke-width="1.5" fill="none" opacity="0.6">
            <path d="M 50 200 Q 200 180 400 200 T 580 220"/>
            <path d="M 100 50 L 150 350"/>
            <path d="M 250 40 L 280 360"/>
            <path d="M 400 60 L 420 340"/>
            <path d="M 500 80 L 480 320"/>
            <path d="M 40 120 L 560 140"/>
            <path d="M 60 280 L 540 300"/>
          </g>

          <!-- Подписи координат -->
          <g class="map-label">
            <text x="10" y="20">43.281°</text>
            <text x="10" y="395">43.247°</text>
            <text x="540" y="395">76.968°</text>
            <text x="10" y="395">76.939°</text>
          </g>

          <!-- Точки находок -->
          <circle class="map-point" data-p="1" cx="200" cy="200" r="6"/>
          <circle class="map-point" data-p="2" cx="320" cy="180" r="6"/>
          <circle class="map-point" data-p="3" cx="420" cy="260" r="6"/>

          <!-- Подписи точек -->
          <text x="215" y="195" class="map-label">01</text>
          <text x="335" y="175" class="map-label">02</text>
          <text x="435" y="255" class="map-label">03</text>

          <!-- Компас -->
          <g transform="translate(540,60)">
            <circle r="20" fill="none" stroke="#8a7d6d" stroke-width="1"/>
            <path d="M 0 -18 L 4 0 L 0 18 L -4 0 Z" fill="#b8543a"/>
            <text y="-24" text-anchor="middle" class="map-label" font-size="10">С</text>
          </g>
        </svg>
      </div>

      <div class="map-sidebar">
        <h4>Выбери точку</h4>
        <div class="point-item" data-p="1">
          <div class="p-num">01</div>
          <div class="p-name">Парк Панфиловцев</div>
          <div class="p-desc">Телефонный люк с молниями и надписью НКС</div>
        </div>
        <div class="point-item" data-p="2">
          <div class="p-num">02</div>
          <div class="p-name">Панфилова, 129</div>
          <div class="p-desc">Крышка с ромбическим рельефом «ТЕПЛОСЕТЬ»</div>
        </div>
        <div class="point-item" data-p="3">
          <div class="p-num">03</div>
          <div class="p-name">Улица Татибекова</div>
          <div class="p-desc">Клеймо без расшифровки, дата неизвестна</div>
        </div>

        <div class="point-detail" id="pointDetail">
          <div class="coords" id="pCoords">43.27654° N · 76.96257° E</div>
          <p id="pDesc">Фотография: 2 сентября 2026. Координаты фиксируют место съёмки, а не гарантируют сохранность люка сегодня.</p>
          <p style="margin-top:12px">
            <a href="#" style="color:var(--accent);text-decoration:none;font-size:12px;letter-spacing:.1em;text-transform:uppercase">История артефакта ↗</a><br>
            <a href="#" style="color:var(--accent);text-decoration:none;font-size:12px;letter-spacing:.1em;text-transform:uppercase">OpenStreetMap ↗</a>
          </p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ===== 05 АЛФАВИТ ===== -->
<section id="alphabet">
  <div class="container">
    <div class="sec-num">05 / ГОРОДСКОЙ АЛФАВИТ</div>
    <h2 class="sec-title">Теперь ты умеешь<br>читать <em>улицу.</em></h2>
    <p class="sec-sub">На прогулке попробуй расшифровать одну букву. Начни прямо здесь.</p>

    <div class="alphabet-grid">
      <div class="letter-card">
        <div>
          <div class="letter-big">В</div>
          <div class="letter-name">Водопровод</div>
        </div>
        <div class="l-desc">Классическая маркировка водных сетей города.</div>
      </div>
      <div class="letter-card">
        <div>
          <div class="letter-big">К</div>
          <div class="letter-name">Канализация</div>
        </div>
        <div class="l-desc">Сеть отвода сточных вод.</div>
      </div>
      <div class="letter-card">
        <div>
          <div class="letter-big">Г</div>
          <div class="letter-name">Гидрант</div>
        </div>
        <div class="l-desc">Пожарный водоразборный пункт.</div>
      </div>
      <div class="letter-card">
        <div>
          <div class="letter-big">ГТС</div>
          <div class="letter-name">Городская сеть</div>
        </div>
        <div class="l-desc">Городская телефонная сеть.</div>
      </div>
      <div class="letter-card">
        <div>
          <div class="letter-big">НКС</div>
          <div class="letter-name">Наркомат связи</div>
        </div>
        <div class="l-desc">Существовал в 1932–1946 годах. Историческая подсказка для датировки.</div>
      </div>
      <div class="letter-card">
        <div>
          <div class="letter-big">Н<br><span style="font-size:36px">К</span><br>М<br>П</div>
          <div class="letter-name">Местная пром.</div>
        </div>
        <div class="l-desc">Народный комиссариат местной промышленности.</div>
      </div>
    </div>
  </div>
</section>

<!-- ===== 06 ИССЛЕДОВАНИЕ ===== -->
<section id="research" class="research">
  <div class="container">
    <div class="sec-num">06 / ОТ НАБЛЮДЕНИЯ К ИССЛЕДОВАНИЮ</div>
    <h2 class="sec-title">Сохранить —<br>значит <em>заметить.</em></h2>
    <p class="sec-sub">История не заканчивается на этом сайте. Продолжи её своим наблюдением.</p>

    <div class="research-grid">
      <div>
        <div class="r-block">
          <div class="r-label">Вопрос исследования</div>
          <h4>Что может рассказать об Алматы одна чугунная крышка 1936 года?</h4>
        </div>
        <div class="r-block">
          <div class="r-label">Рабочая гипотеза</div>
          <p>Если сопоставить дату, название города и клейма со сведениями о городских сетях, повседневный предмет станет историческим источником.</p>
        </div>
        <div class="r-block">
          <div class="r-label">Методы</div>
          <p>Чтение надписей · сравнение фотографий · сопоставление публикаций · фиксация места и даты наблюдения.</p>
        </div>
        <div class="r-block">
          <div class="r-label">Что уже можно сказать</div>
          <p>Надписи связывают артефакт с Алма-Атой и городскими службами. Датированная крышка помогает увидеть материальную сторону истории водоснабжения. Но сама по себе она не доказывает, когда проложили трубы именно под ней: крышки могли заменять и переносить.</p>
        </div>
      </div>

      <div class="steps">
        <div class="step">
          <div class="step-num">01</div>
          <div>
            <h4>Зафиксировать</h4>
            <p>Снять общий вид и надписи, записать адрес, дату и состояние. Работать с тротуара, со взрослым; не открывать люк.</p>
          </div>
        </div>
        <div class="step">
          <div class="step-num">02</div>
          <div>
            <h4>Сопоставить</h4>
            <p>Проверить надписи по нескольким источникам. Разделить то, что видно на фото, и предположение о его истории.</p>
          </div>
        </div>
        <div class="step">
          <div class="step-num">03</div>
          <div>
            <h4>Сохранить знание</h4>
            <p>Составить карточку с автором фотографии. Предложить музею или городской службе документирование редкого экземпляра перед заменой.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ===== ДНЕВНИК ===== -->
<section id="diary">
  <div class="container">
    <div class="sec-num">ПОЛЕВОЙ ДНЕВНИК</div>
    <h2 class="sec-title">Твоя следующая <em>находка</em></h2>
    <p class="sec-sub">Записи сохраняются только в этом браузере. Экспортируй их, чтобы не потерять.</p>

    <div class="diary">
      <div class="diary-head">
        <h3>Мои наблюдения</h3>
        <div class="diary-actions">
          <button class="btn" id="exportBtn">Экспорт записей ↓</button>
          <label class="btn" style="cursor:pointer">
            Импорт ↑
            <input type="file" id="importFile" style="display:none" accept=".json">
          </label>
        </div>
      </div>

      <form class="diary-form" id="diaryForm">
        <input type="text" id="dAddr" placeholder="Адрес / место" required>
        <input type="text" id="dInscr" placeholder="Надпись на крышке" required>
        <textarea id="dNote" placeholder="Заметки, состояние, впечатления…"></textarea>
        <button type="submit" class="btn primary" style="grid-column:1/-1">+ Добавить наблюдение</button>
      </form>

      <div class="entries" id="entries">
        <div class="empty">Здесь пока нет твоих наблюдений. Добавь адрес, надпись и фотографию первой находки.</div>
      </div>
      <p style="margin-top:24px;font-size:12px;color:var(--muted);font-family:'JetBrains Mono',monospace;letter-spacing:.1em">
        НАБЛЮДЕНИЙ: <span id="count">0</span>
      </p>
    </div>
  </div>
</section>

<!-- ===== ФУТЕР ===== -->
<footer>
  <div class="container">
    <div class="f-title">В следующий раз<br>посмотри <em>под ноги.</em></div>
    <p class="f-sub">У знакомого города ещё много незнакомых историй.</p>
    <div class="f-links">
      <a href="#map">Вернуться к карте</a>
      <a href="#artifact">Главный артефакт</a>
      <a href="#collection">Коллекция</a>
      <a href="#">Наверх ↑</a>
    </div>
    <div class="f-meta">
      под ногами · АЛМАТЫ · «Один артефакт — одна история»<br>
      Автор проекта — Богдан · 2026
    </div>
  </div>
</footer>

<script>
  // ===== ДАННЫЕ МАРКЕРОВ =====
  const markers = {
    1:{label:"01 / ОРГАНИЗАЦИЯ",title:"Трест Водоканал",text:"Городская служба, отвечавшая за водоснабжение. Название отражает советскую систему трестов — объединений предприятий одной отрасли."},
    2:{label:"02 / ГОРОД",title:"АЛМА-АТА",text:"Историческое название города, которое использовалось с 1921 по 1993 год. На чугуне оно застыло навсегда — даже когда город уже официально стал Алматы."},
    3:{label:"03 / ДАТА",title:"1936",text:"Год отливки крышки. По данным Е. Морозовой, в 1936–1940 годах в городе проложили около 39 км водопроводных линий — важный этап расширения сетей."},
    4:{label:"04 / ВЕДОМСТВО",title:"Н.К.М.П.",text:"Народный комиссариат местной промышленности. Так аббревиатуру расшифровывают краеведческие публикации. Датировать предмет только по пунктуации без документов нельзя."},
    5:{label:"05 / ТЕХНОЛОГИЯ",title:"Чугунная отливка",text:"Традиционный метод изготовления люковых крышек. Рельеф получается в форме — каждая буква и цифра требуют своей оснастки."}
  };

  document.querySelectorAll('.marker').forEach(m=>{
    m.addEventListener('click',()=>{
      document.querySelectorAll('.marker').forEach(x=>x.classList.remove('active'));
      m.classList.add('active');
      const d = markers[m.dataset.m];
      const info = document.getElementById('markerInfo');
      info.innerHTML = `
        <div class="m-label">${d.label}</div>
        <h4>${d.title}</h4>
        <p>${d.text}</p>
      `;
    });
  });

  // ===== ВРЕМЕННАЯ ШКАЛА =====
  const years = {
    1901:{tag:"ВЕРНЫЙ / ПЕРВЫЕ СЕТИ",title:"Дореволюционный водопровод",text:"В начале XX века в Верном появляются первые проекты централизованного водоснабжения. Арыки и родники — главный источник воды для жителей.",text2:"Люков в современном понимании ещё нет: сети открытые, а вода распределяется по арыкам.",cite:"Городской архив Алматы"},
    1912:{tag:"ВЕРНЫЙ / РОСТ ГОРОДА",title:"Первые водоразборные будки",text:"К 1910-м годам в городе работают несколько водопроводных линий. Вода подаётся в общественные колонки и частные домовладения.",text2:"Чугунные детали начинают входить в городскую инфраструктуру, но массовых люков ещё нет.",cite:"Краеведческие публикации"},
    1936:{tag:"АЛМА-АТА / ГЛАВНЫЙ АРТЕФАКТ",title:"История получает чугунный след",text:"На главном экспонате — «1936 г.». По данным Е. Морозовой, в 1936–1940 годах в городе проложили около 39 км водопроводных линий.",text2:"1936 — дата известного экземпляра. Называть его первым люком города оснований недостаточно.",cite:"Евгения Морозова · Hronika.kz ↗"},
    1950:{tag:"АЛМА-АТА / ПОСЛЕВОЕННЫЙ ПЕРИОД",title:"Массовое жилищное строительство",text:"Город активно застраивается. Появляются новые кварталы, а с ними — разветвлённые сети водоснабжения, канализации, телефонии.",text2:"Многие крышки этого периода имеют типовые надписи трестов и управлений. Датировка часто приблизительная.",cite:"По подписям к фотографиям"},
    2026:{tag:"АЛМАТЫ / СОВРЕМЕННОСТЬ",title:"Городской дизайн-код",text:"Современные люки — часть визуальной среды. Появляются крышки с логотипами операторов, художественные отливки, новые материалы.",text2:"Старые чугунные люки становятся объектами внимания краеведов и дизайнеров.",cite:"Walking Almaty · 24KZ, 2026"}
  };

  document.querySelectorAll('.year-btn').forEach(b=>{
    b.addEventListener('click',()=>{
      document.querySelectorAll('.year-btn').forEach(x=>x.classList.remove('active'));
      b.classList.add('active');
      const y = b.dataset.y;
      const d = years[y];
      document.getElementById('yNum').textContent = b.textContent;
      document.getElementById('yTag').textContent = d.tag;
      document.getElementById('yTitle').textContent = d.title;
      document.getElementById('yText').textContent = d.text;
      document.getElementById('yText2').textContent = d.text2;
      document.getElementById('yCite').innerHTML = d.cite;
    });
  });

  // ===== КОЛЛЕКЦИЯ =====
  const cards = [
    {id:"001",type:"water",typeLabel:"Водное хозяйство",title:"Паспорт Алма-Аты",desc:"Пять надписей на одной чугунной крышке. Дата 1936, Трест Водоканал, Н.К.М.П.",year:1936,street:"",svg:'<circle cx="100" cy="100" r="80" fill="#3a3633"/><text x="100" y="90" text-anchor="middle" fill="#d4c9b0" font-family="serif" font-size="24" font-weight="600">1936</text><text x="100" y="120" text-anchor="middle" fill="#d4c9b0" font-family="serif" font-size="12">АЛМА-АТА</text>'},
    {id:"002",type:"phone",typeLabel:"Связь",title:"Молнии над городом",desc:"Телефонный люк с молниями, словом ТЕЛЕФОН и буквами НКС в парке Панфиловцев.",year:"",street:"Парк Панфиловцев",svg:'<circle cx="100" cy="100" r="80" fill="#3a3633"/><path d="M 70 60 L 90 90 L 80 90 L 100 130 L 85 100 L 95 100 Z" fill="#d4c9b0"/><text x="100" y="160" text-anchor="middle" fill="#d4c9b0" font-family="serif" font-size="14">ТЕЛЕФОН</text>'},
    {id:"003",type:"water",typeLabel:"Водное хозяйство",title:"Дата под вопросом",desc:"Почему подпись к фотографии — ещё не окончательный ответ. Изношенная крышка с надписями Трест Водоканал.",year:"1950?",street:"",svg:'<circle cx="100" cy="100" r="80" fill="#3a3633"/><text x="100" y="95" text-anchor="middle" fill="#d4c9b0" font-family="serif" font-size="18" opacity="0.6">1950?</text><text x="100" y="125" text-anchor="middle" fill="#d4c9b0" font-family="serif" font-size="10">ВОДОКАНАЛ</text>'},
    {id:"004",type:"other",typeLabel:"Тепловая сеть",title:"Тепло большого города",desc:"Одно слово меняет наше представление о том, что под землёй. Ромбический рельеф.",year:"",street:"Панфилова",svg:'<circle cx="100" cy="100" r="80" fill="#3a3633"/><g stroke="#d4c9b0" stroke-width="1" fill="none"><path d="M 50 70 L 70 90 L 90 70 L 110 90 L 130 70 L 150 90"/><path d="M 50 100 L 70 120 L 90 100 L 110 120 L 130 100 L 150 120"/><path d="M 50 130 L 70 150 L 90 130 L 110 150 L 130 130 L 150 150"/></g>'},
    {id:"005",type:"other",typeLabel:"Открытый вопрос",title:"Клеймо без расшифровки",desc:"Иногда хорошее исследование начинается с честного «не знаю». Квадратный вафельный узор.",year:"",street:"Татибекова",svg:'<circle cx="100" cy="100" r="80" fill="#3a3633"/><g fill="#d4c9b0" opacity="0.5"><circle cx="70" cy="70" r="3"/><circle cx="100" cy="70" r="3"/><circle cx="130" cy="70" r="3"/><circle cx="70" cy="100" r="3"/><circle cx="100" cy="100" r="3"/><circle cx="130" cy="100" r="3"/><circle cx="70" cy="130" r="3"/><circle cx="100" cy="130" r="3"/><circle cx="130" cy="130" r="3"/></g>'},
    {id:"006",type:"water",typeLabel:"Гидрант",title:"Одна буква — подсказка",desc:"«Г» и волны: читаем назначение раньше, чем угадываем возраст.",year:"",street:"Радостовца — Кургангазы",svg:'<circle cx="100" cy="100" r="80" fill="#3a3633"/><text x="100" y="115" text-anchor="middle" fill="#d4c9b0" font-family="serif" font-size="60" font-weight="600">Г</text><path d="M 40 150 Q 70 140 100 150 T 160 150" stroke="#d4c9b0" stroke-width="2" fill="none"/>'}
  ];

  function renderCards(filter="all",search=""){
    const c = document.getElementById('cards');
    const s = search.toLowerCase();
    const list = cards.filter(x=>{
      if(filter!=="all" && x.type!==filter) return false;
      if(s && !(x.title+x.desc+x.street+x.year).toLowerCase().includes(s)) return false;
      return true;
    });
    c.innerHTML = list.map(x=>`
      <div class="card">
        <div class="card-img">
          <div class="card-type">${x.typeLabel} ↗</div>
          <svg viewBox="0 0 200 200">${x.svg}</svg>
        </div>
        <div class="card-body">
          <div class="card-num">${x.id} / ${x.year||'ДАТА НЕИЗВЕСТНА'}</div>
          <div class="card-title">${x.title}</div>
          <div class="card-desc">${x.desc}</div>
          <div class="card-link">Рассмотреть ближе ↗</div>
        </div>
      </div>
    `).join('');
    if(!list.length) c.innerHTML = '<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);font-style:italic">Ничего не найдено</p>';
  }

  document.querySelectorAll('.filter-btn').forEach(b=>{
    b.addEventListener('click',()=>{
      document.querySelectorAll('.filter-btn').forEach(x=>x.classList.remove('active'));
      b.classList.add('active');
      renderCards(b.dataset.f, document.getElementById('search').value);
    });
  });
  document.getElementById('search').addEventListener('input',e=>{
    const active = document.querySelector('.filter-btn.active').dataset.f;
    renderCards(active, e.target.value);
  });
  renderCards();

  // ===== КАРТА =====
  const points = {
    1:{name:"Парк Панфиловцев",coords:"43.2411° N · 76.9473° E",desc:"Телефонный люк с молниями и надписью НКС. Фотография: 2 сентября 2026."},
    2:{name:"Панфилова, 129",coords:"43.2385° N · 76.9512° E",desc:"Крышка с ромбическим рельефом и надписью ТЕПЛОСЕТЬ. Фотография: 2 сентября 2026."},
    3:{name:"Улица Татибекова",coords:"43.27654° N · 76.96257° E",desc:"Клеймо без расшифровки. Дата неизвестна. Фотография: 2 сентября 2026."}
  };

  function selectPoint(id){
    document.querySelectorAll('.map-point').forEach(x=>x.classList.remove('active'));
    document.querySelectorAll('.point-item').forEach(x=>x.classList.remove('active'));
    const p = document.querySelector(`.map-point[data-p="${id}"]`);
    const i = document.querySelector(`.point-item[data-p="${id}"]`);
    if(p) p.classList.add('active');
    if(i) i.classList.add('active');
    const d = points[id];
    document.getElementById('pCoords').textContent = d.coords;
    document.getElementById('pDesc').textContent = d.desc;
    document.getElementById('pointDetail').classList.add('show');
  }
  document.querySelectorAll('.map-point').forEach(p=>p.addEventListener('click',()=>selectPoint(p.dataset.p)));
  document.querySelectorAll('.point-item').forEach(p=>p.addEventListener('click',()=>selectPoint(p.dataset.p)));

  // ===== ДНЕВНИК =====
  let entries = JSON.parse(localStorage.getItem('diary')||'[]');
  const entriesEl = document.getElementById('entries');
  const countEl = document.getElementById('count');

  function renderEntries(){
    countEl.textContent = entries.length;
    if(!entries.length){
      entriesEl.innerHTML = '<div class="empty">Здесь пока нет твоих наблюдений. Добавь адрес, надпись и фотографию первой находки.</div>';
      return;
    }
    entriesEl.innerHTML = entries.map((e,i)=>`
      <div class="entry">
        <div class="entry-head">
          <span>${new Date(e.date).toLocaleString('ru-RU')}</span>
          <button class="entry-del" data-i="${i}" title="Удалить">×</button>
        </div>
        <h5>${e.addr}</h5>
        <p><strong style="color:var(--accent)">${e.inscr}</strong></p>
        ${e.note?`<p>${e.note}</p>`:''}
      </div>
    `).join('');
    document.querySelectorAll('.entry-del').forEach(b=>{
      b.addEventListener('click',()=>{
        entries.splice(b.dataset.i,1);
        localStorage.setItem('diary',JSON.stringify(entries));
        renderEntries();
      });
    });
  }

  document.getElementById('diaryForm').addEventListener('submit',e=>{
    e.preventDefault();
    entries.unshift({
      date:Date.now(),
      addr:document.getElementById('dAddr').value,
      inscr:document.getElementById('dInscr').value,
      note:document.getElementById('dNote').value
    });
    localStorage.setItem('diary',JSON.stringify(entries));
    e.target.reset();
    renderEntries();
  });

  document.getElementById('exportBtn').addEventListener('click',()=>{
    const blob = new Blob([JSON.stringify(entries,null,2)],{type:'application/json'});
    const a = document.createElement('a');
    a.href = URL.createObjectURL(blob);
    a.download = 'pod-nogami-diary.json';
    a.click();
  });

  document.getElementById('importFile').addEventListener('change',e=>{
    const f = e.target.files[0];
    if(!f) return;
    const r = new FileReader();
    r.onload = ev=>{
      try{
        const data = JSON.parse(ev.target.result);
        if(Array.isArray(data)){
          entries = data.concat(entries);
          localStorage.setItem('diary',JSON.stringify(entries));
          renderEntries();
        }
      }catch(err){alert('Ошибка чтения файла')}
    };
    r.readAsText(f);
  });

  renderEntries();

  // ===== FADE-IN =====
  const io = new IntersectionObserver(es=>{
    es.forEach(e=>{if(e.isIntersecting)e.target.classList.add('visible')});
  },{threshold:.1});
  document.querySelectorAll('section > .container > *').forEach(el=>{
    el.classList.add('fade-in');
    io.observe(el);
  });
</script>

</body>
</html>
