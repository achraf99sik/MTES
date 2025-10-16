<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../Includes/header.jsp"%>

<body class="bg-slate-50 dark:bg-slate-900 transition-colors duration-300 min-h-screen flex flex-col">

<!-- Navigation -->
<nav class="border-b border-slate-200 dark:border-slate-700 bg-white dark:bg-slate-900 sticky top-0 z-50 transition-colors duration-300">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex items-center justify-between h-16">
            <!-- Logo -->
            <div class="flex items-center gap-2">
                <div class="w-10 h-10 bg-slate-900 dark:bg-white rounded-lg flex items-center justify-center transition-colors duration-300">
                    <svg class="w-6 h-6 text-white dark:text-slate-900 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/>
                    </svg>
                </div>
                <span class="text-xl font-bold text-slate-900 dark:text-white transition-colors duration-300">MediCare Portal</span>
            </div>
            <!-- User Info and Logout -->
            <div class="flex items-center gap-4">
                <span class="text-slate-600 dark:text-slate-300 text-sm font-medium">Welcome, Nurse ${user.fullName}</span>
                <a href="logout" class="btn-secondary px-4 py-1.5 rounded-lg font-semibold">Logout</a>
            </div>
        </div>
    </div>
</nav>

<main class="flex-grow max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="space-y-8">
        <h1 class="text-3xl font-bold text-slate-900 dark:text-white transition-colors duration-300">Nurse Dashboard</h1>

        <!-- Stats Overview -->
        <div class="grid md:grid-cols-3 gap-6">
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">Patients in Queue</h2>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">${queues.size()}</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Total patients waiting</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">Appointments Today</h2>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">12</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Scheduled for today</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">New Admissions</h2>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">3</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Patients admitted today</p>
            </div>
        </div>

        <!-- Quick Actions -->
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            <a href="#admitPatientSection" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">Admit Patient</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Search for existing or register new patients.</p>
            </a>
            <a href="#" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">View Today's Patients</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">See all scheduled and waiting patients.</p>
            </a>
            <a href="#" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">Manage Vital Signs</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Update patient vital statistics.</p>
            </a>
        </div>

        <!-- Admit Patient Section -->
        <div id="admitPatientSection" class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300 mt-8">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Admit Patient</h2>

            <!-- Search Form -->
            <form action="search-patient" method="POST" class="space-y-4 mb-8">
                <label for="ssnSearch" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Search by SSN:</label>
                <input type="text" id="ssnSearch" name="ssn" placeholder="Enter patient SSN" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Search Patient</button>
            </form>

            <!-- Existing Patient Form -->
            <c:if test="${not empty patient}">
                <div id="existingPatientForm">
                    <h3 class="text-xl font-semibold text-slate-900 dark:text-white mb-4">Patient Found: ${patient.firstName} ${patient.lastName} (SSN: ${patient.socialSecurityNumber})</h3>
                    <form action="enter-vitals" method="POST" class="space-y-4">
                        <input type="hidden" name="patientId" value="${patient.id}">
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">Temperature (°C):</label>
                            <input type="number" step="0.1" name="temperature" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" required>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">Systolic BP (mmHg):</label>
                            <input type="number" min="50" max="210" name="systolic" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" required>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">Diastolic BP (mmHg):</label>
                            <input type="number" min="35" max="120" name="diastolic" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" required>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">Heart Rate (bpm):</label>
                            <input type="number" name="heartRate" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" required>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">Respiratory Rate (breaths/min):</label>
                            <input type="number" name="respiratoryRate" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" required>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">Height (cm):</label>
                            <input type="number" step="0.1" name="height" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" required>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">Weight (kg):</label>
                            <input type="number" step="0.1" name="weight" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" required>
                        </div>
                        <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Save Vitals & Add to Queue</button>
                    </form>
                </div>
            </c:if>

            <!-- New Patient Form -->
            <c:if test="${empty patient}">
                <div id="newPatientForm">
                    <h3 class="text-xl font-semibold text-slate-900 dark:text-white mb-4">New Patient Registration</h3>
                    <form action="register-patient" method="POST" class="space-y-4">
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">First Name:</label>
                            <input type="text" name="firstName" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">Last Name:</label>
                            <input type="text" name="lastName" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">Birthdate:</label>
                            <input type="date" name="birthdate" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-slate-700 dark:text-slate-300">SSN:</label>
                            <input type="text" name="ssn" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                        </div>
                        <!-- Add other fields like phone, address, insurance, allergies, etc. -->
                        <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Register & Add to Queue</button>
                    </form>
                </div>
            </c:if>
        </div>

        <!-- Waiting Queue -->
        <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Waiting Queue</h2>
            <ul class="divide-y divide-slate-200 dark:divide-slate-700">
                <c:forEach items="${queues}" var="queue">
                    <li class="flex items-center justify-between py-4">
                        <div class="flex flex-col">
                            <span class="font-semibold text-slate-900 dark:text-white">${queue.patient.firstName} ${queue.patient.lastName}</span>
                            <span class="text-sm text-slate-600 dark:text-slate-400">
                                SSN: ${queue.patient.socialSecurityNumber} • Arrival: <span class="arrival-time">${queue.arrivalTime}</span>
                            </span>
                        </div>
                    </li>
                </c:forEach>
                <c:if test="${empty queues}">
                    <li class="py-4 text-slate-600 dark:text-slate-400">No patients currently in the waiting queue.</li>
                </c:if>
            </ul>
        </div>
    </div>
</main>

<!-- Footer -->
<footer class="bg-white dark:bg-slate-900 border-t border-slate-200 dark:border-slate-700 py-6 text-center text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300 mt-auto">
    &copy; 2025 MediCare Portal. All rights reserved.
</footer>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        document.querySelectorAll('.arrival-time').forEach(span => {
            const raw = span.textContent;
            if (!raw) return;
            const date = new Date(raw);
            const formatted = date.getFullYear() + '-' +
                String(date.getMonth() + 1).padStart(2, '0') + '-' +
                String(date.getDate()).padStart(2, '0') + ' ' +
                String(date.getHours()).padStart(2, '0') + ':' +
                String(date.getMinutes()).padStart(2, '0') + ':' +
                String(date.getSeconds()).padStart(2, '0');
            span.textContent = formatted;
        });
    });
</script>

</body>
