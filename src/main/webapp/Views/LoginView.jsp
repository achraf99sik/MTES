<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${title}</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <style>
        @theme inline {
            --color-primary: #0f172a;
            --color-primary-light: #1e293b;
            --color-accent: #0ea5e9;
            --color-accent-light: #38bdf8;
            --color-border: #e2e8f0;
            --color-muted: #64748b;
            --radius: 0.625rem;
        }
    </style>
</head>
<body class="w-screen">
<div class="w-full m-auto max-w-md bg-white rounded-xl shadow-lg border border-slate-200 p-8">
    <div class="flex lg:hidden items-center gap-2 mb-6">
        <div class="w-10 h-10 bg-slate-900 rounded-lg flex items-center justify-center">
            <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/>
            </svg>
        </div>
        <span class="text-xl font-bold text-slate-900">MediCare Portal</span>
    </div>

    <div class="space-y-2 mb-6">
        <h2 class="text-2xl font-bold text-slate-900">Welcome back</h2>
        <p class="text-slate-600">Sign in to access your healthcare dashboard</p>
    </div>

    <form method="post" action="login" id="loginForm" class="space-y-4">
        <div class="space-y-2">
            <label for="email" class="block text-sm font-medium text-slate-900">
                Email
            </label>
            <input id="email" name="email" type="email" placeholder="doctor@hospital.com" required class="w-full px-3 py-2 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-slate-900 focus:border-transparent"/>
        </div>

        <div class="space-y-2">
            <div class="flex items-center justify-between">
                <label for="password" class="block text-sm font-medium text-slate-900">
                    Password
                </label>
                <a href="#" class="text-sm text-slate-900 hover:text-slate-700 transition-colors">
                    Forgot password?
                </a>
            </div>
            <input name="password" id="password" type="password" placeholder="Enter your password" required class="w-full px-3 py-2 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-slate-900 focus:border-transparent"/>
        </div>

        <div class="flex items-center space-x-2">
            <input type="checkbox" id="remember" class="checkbox w-4 h-4 border-slate-300 rounded cursor-pointer"/>
            <label for="remember" class="text-sm text-slate-900 cursor-pointer select-none">
                Remember me for 30 days
            </label>
        </div>

        <button type="submit" class="bg-black/50 w-full py-2.5 px-4 rounded-lg font-semibold flex items-center justify-center gap-2">
            Sign in
        </button>
    </form>
</div>
</body>
</html>