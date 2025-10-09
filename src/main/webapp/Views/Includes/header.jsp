<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Specialist Dashboard - MediCare Portal</title>
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

        .btn-primary {
            background-color: var(--color-primary);
            color: white;
            transition: all 0.2s;
        }

        .btn-primary:hover {
            background-color: var(--color-primary-light);
            transform: translateY(-1px);
        }

        .btn-secondary {
            background-color: white;
            color: var(--color-primary);
            border: 2px solid var(--color-primary);
            transition: all 0.2s;
        }

        .btn-secondary:hover {
            background-color: var(--color-primary);
            color: white;
        }

        .feature-card {
            transition: all 0.3s;
        }

        .feature-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);
        }

        /* Added dark mode styles */
        .dark .btn-secondary {
            background-color: transparent;
            color: white;
            border-color: white;
        }

        .dark .btn-secondary:hover {
            background-color: white;
            color: #0f172a;
        }

        .dark .feature-card:hover {
            box-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.4), 0 8px 10px -6px rgb(0 0 0 / 0.3);
        }

        /* Dark mode toggle button styles */
        .theme-toggle {
            position: relative;
            width: 60px;
            height: 30px;
            background-color: #e2e8f0;
            border-radius: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .dark .theme-toggle {
            background-color: #334155;
        }

        .theme-toggle-slider {
            position: absolute;
            top: 3px;
            left: 3px;
            width: 24px;
            height: 24px;
            background-color: white;
            border-radius: 50%;
            transition: transform 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .dark .theme-toggle-slider {
            transform: translateX(30px);
        }
    </style>
</head>
