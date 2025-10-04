<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>ExpenseFlow — Login</title>
  <style>
    :root{--bg:#f4f7fb;--card:#ffffff;--accent:#2563eb;--muted:#6b7280;--success:#10b981}
    *{box-sizing:border-box}
    body{margin:0;font-family:Inter,ui-sans-serif,system-ui,-apple-system,'Segoe UI',Roboto,'Helvetica Neue',Arial;background:linear-gradient(180deg, #eef2ff 0%, var(--bg) 100%);color:#0f172a}
    .container{min-height:100vh;display:flex;align-items:center;justify-content:center;padding:48px}
    .card{width:100%;max-width:980px;background:var(--card);border-radius:14px;box-shadow:0 10px 30px rgba(2,6,23,0.08);display:grid;grid-template-columns:1fr 420px;overflow:hidden}

    /* left pane (marketing) */
    .left{padding:40px 36px;background:linear-gradient(135deg,#eef2ff 0%, #fff 60%);display:flex;flex-direction:column;gap:18px}
    .brand{display:flex;align-items:center;gap:12px}
    .logo{width:48px;height:48px;border-radius:10px;background:linear-gradient(135deg,var(--accent),#7c3aed);display:flex;align-items:center;justify-content:center;color:white;font-weight:700}
    h1{font-size:20px;margin:0}
    p.lead{margin:0;color:var(--muted)}
    .features{margin-top:12px;display:grid;gap:10px}
    .feature{display:flex;gap:10px;align-items:flex-start}
    .dot{width:10px;height:10px;border-radius:50%;background:var(--accent);margin-top:6px}
    .feature p{margin:0;font-size:14px;color:#0f172a}
    .feature small{display:block;color:var(--muted);font-size:13px;margin-top:4px}

    /* right pane (form) */
    .right{padding:36px;background:linear-gradient(180deg, #fff 0%, #fbfdff 100%)}
    form{display:flex;flex-direction:column;gap:14px}
    label{font-size:13px;color:var(--muted)}
    input[type="email"],input[type="password"]{width:100%;padding:12px 14px;border-radius:10px;border:1px solid #e6eef8;font-size:14px}
    .row{display:flex;gap:12px;align-items:center;justify-content:space-between}
    .btn{background:var(--accent);color:white;padding:12px 14px;border-radius:10px;border:0;font-weight:600;cursor:pointer}
    .btn.secondary{background:transparent;border:1px solid #e6eef8;color:#0f172a}
    .muted{color:var(--muted);font-size:13px}
    .divider{height:1px;background:#f0f4ff;margin:8px 0;border-radius:4px}
    .socials{display:flex;gap:10px}
    .social{flex:1;padding:10px;border-radius:8px;border:1px solid #eef2ff;display:flex;align-items:center;justify-content:center;font-weight:600;cursor:pointer}
    .foot{margin-top:8px;font-size:13px;color:var(--muted)}

    /* responsive */
    @media (max-width:900px){.card{grid-template-columns:1fr}.left{display:none}.container{padding:24px}}
  </style>
</head>
<body>
  <div class="container">
    <div class="card" role="main">
      <aside class="left" aria-hidden="true">
        <div class="brand">
          <div class="logo">EF</div>
          <div>
            <h1>ExpenseFlow</h1>
            <p class="lead">Enterprise expense management made simple</p>
          </div>
        </div>

        <div style="margin-top:8px">
          <p style="font-weight:600;margin:0">Trusted by finance teams</p>
          <small class="muted">Manage spending, approvals and reimbursements in one place</small>
        </div>

        <div class="features">
          <div class="feature">
            <div class="dot"></div>
            <div>
              <p>Automated expense capture</p>
              <small>Receipt scanning and auto-categorisation</small>
            </div>
          </div>

          <div class="feature">
            <div class="dot"></div>
            <div>
              <p>Policy & approval workflows</p>
              <small>Flexible approvals to match your org</small>
            </div>
          </div>

          <div class="feature">
            <div class="dot"></div>
            <div>
              <p>Integrations</p>
              <small>Sync with accounting and payroll</small>
            </div>
          </div>
        </div>

        <div style="margin-top:auto;font-size:13px;color:var(--muted)">© ExpenseFlow 2025</div>
      </aside>

      <section class="right">
        <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:6px">
          <div>
            <h2 style="margin:0">Welcome back</h2>
            <div class="muted" style="margin-top:6px">Sign in to your account to continue</div>
          </div>
          <div style="font-size:13px;color:var(--muted)">Need an account? <a href="#">Sign up</a></div>
        </div>

        <form id="loginForm" onsubmit="return handleSubmit(event)">
          <div>
            <label for="email">Email</label>
            <input id="email" name="email" type="email" placeholder="you@company.com" required />
          </div>

          <div>
            <label for="password">Password</label>
            <input id="password" name="password" type="password" placeholder="Enter your password" required minlength="6" />
          </div>

          <div class="row">
            <label style="display:flex;align-items:center;gap:8px"><input type="checkbox"/> Remember me</label>
            <a href="#" class="muted">Forgot password?</a>
          </div>

          <button class="btn" type="submit">Sign in</button>

          <div class="divider"></div>

          <div class="socials">
            <div class="social" onclick="alert('Sign in with Google - placeholder')">Sign in with Google</div>
            <div class="social" onclick="alert('Sign in with SSO - placeholder')">Sign in with SSO</div>
          </div>

          <div class="foot">By continuing, you agree to our <a href="#">Terms</a> and <a href="#">Privacy Policy</a>.</div>
        </form>

      </section>
    </div>
  </div>

  <script>
    // Example client-side handling. Replace with real auth calls to your backend.
    function handleSubmit(e){
      e.preventDefault();
      const email = document.getElementById('email').value.trim();
      const password = document.getElementById('password').value;

      // basic validation
      if(!email || password.length < 6){
        return alert('Please enter a valid email and password (min 6 chars).');
      }

      // demo: show a success then redirect
      const btn = document.querySelector('.btn');
      btn.disabled = true; btn.textContent = 'Signing in...';

      // simulate network call
      setTimeout(()=>{
        // In real usage, send credentials to your server and handle response.
        // For example, use fetch('/api/login',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({email,password})})
        alert('Signed in as ' + email + ' (demo)');
        btn.disabled = false; btn.textContent = 'Sign in';
        // window.location.href = '/dashboard';
      },900);

      return false;
    }
  </script>
</body>
</html>
