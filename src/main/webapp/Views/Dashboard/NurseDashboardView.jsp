<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../Includes/header.jsp"%>
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
                <span class="text-xl font-bold text-slate-500 dark:text-slate-400 transition-colors duration-300 ml-4">/ Nurse Dashboard</span>
            </div>

            <!-- User Info and Logout -->
            <div class="flex items-center gap-4">
                <span class="text-slate-600 dark:text-slate-300 text-sm font-medium">Welcome, Nurse ${user.fullName}</span>
                <a href="logout" class="btn-secondary px-4 py-1.5 rounded-lg font-semibold">
                    Logout
                </a>
            </div>
        </div>
    </div>
</nav>

<!-- Main Content -->
<main class="flex-grow max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="space-y-8">
        <h1 class="text-3xl font-bold text-slate-900 dark:text-white transition-colors duration-300">Nurse Dashboard</h1>

        <!-- Stats Overview -->
        <div class="grid md:grid-cols-3 gap-6">
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">Patients in Queue</h2>
                    <svg class="w-6 h-6 text-blue-500" fill="currentColor" viewBox="0 0 20 20"><path d="M9 6a3 3 0 11-6 0 3 3 0 016 0zM17.555 12.333a10.02 10.02 0 01-3.666 4.334A6.992 6.992 0 0110 18c-.808 0-1.597-.11-2.355-.333a10.02 10.02 0 01-3.666-4.334C2.556 11.222 2 10.111 2 9c0-3.313 2.687-6 6-6s6 2.687 6 6c0 1.111-.556 2.222-1.445 3.333zM10 10a3 3 0 100-6 3 3 0 000 6z"></path><path fill-rule="evenodd" d="M12.983 14.776a3 3 0 10-5.966 0A9.002 9.002 0 003 18.5a.5.5 0 00.5.5h13a.5.5 0 00.5-.5A9.002 9.002 0 0012.983 14.776zM10 11a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">8</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Total patients waiting</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">Appointments Today</h2>
                    <svg class="w-6 h-6 text-green-500" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" clip-rule="evenodd"></path></svg>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">12</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Scheduled for today</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">New Admissions</h2>
                    <svg class="w-6 h-6 text-purple-500" fill="currentColor" viewBox="0 0 20 20"><path d="M8 9a3 3 0 100-6 3 3 0 000 6zM8 11a6 6 0 016 6H2a6 6 0 016-6zM16 7a1 1 0 10-2 0v1h-1a1 1 0 100 2h1v1a1 1 0 102 0v-1h1a1 1 0 100-2h-1V7z"></path></svg>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">3</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Patients admitted today</p>
            </div>
        </div>

        <!-- Quick Actions -->
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            <a href="#" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-blue-100 dark:bg-blue-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-blue-600 dark:text-blue-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM12 14v1a3 3 0 00-3 3H5a3 3 0 00-3-3v-1a4 4 0 014-4h.5L9 7.429m9.546-4.717L12 11.22V15h3.75l5.109-7.29a1.146 1.146 0 00-1.742-1.282z"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">Admit Patient</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Search for existing or register new patients.</p>
            </a>
            <a href="#" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-green-600 dark:text-green-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">View Today's Patients</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">See all scheduled and waiting patients.</p>
            </a>
            <a href="#" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-orange-100 dark:bg-orange-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-orange-600 dark:text-orange-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">Manage Vital Signs</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Update patient vital statistics.</p>
            </a>
        </div>

















        <!-- Inside <main> after Quick Actions -->
        <div id="admitPatientSection" class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300 mt-8">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Admit Patient</h2>

            <!-- Search for Patient Form -->
            <form action="/nurse/search-patient" method="POST" class="space-y-4 mb-8">
                <label for="ssnSearch" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Search by SSN:</label>
                <input type="text" id="ssnSearch" name="ssn" placeholder="Enter patient SSN" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Search Patient</button>
            </form>

            <!-- JSP logic would dynamically render one of these based on search result -->
            <%
                // Example: if a patient object is found in request scope after search
                // Patient patient = (Patient) request.getAttribute("foundPatient");
                // if (patient != null) {
            %>
            <!-- Section for Existing Patient: Enter Vital Signs -->
            <div id="existingPatientForm">
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white mb-4">Patient Found: Jane Doe (SSN: ***-**-1234)</h3>
                <form action="/nurse/enter-vitals" method="POST" class="space-y-4">
                    <input type="hidden" name="patientId" value="[PATIENT_ID_FROM_DB]">
                    <div>
                        <label for="temperature" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Temperature (°C):</label>
                        <input type="number" step="0.1" id="temperature" name="temperature" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                    </div>
                    <div>
                        <label for="bloodPressure" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Blood Pressure (mmHg):</label>
                        <input type="text" id="bloodPressure" name="bloodPressure" placeholder="e.g., 120/80" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                    </div>
                    <div>
                        <label for="heartRate" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Heart Rate (bpm):</label>
                        <input type="number" id="heartRate" name="heartRate" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                    </div>
                    <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Save Vitals & Add to Queue</button>
                </form>
            </div>
            <%
                // } else {
            %>
            <!-- Section for New Patient: Enter Personal Info -->
            <div id="newPatientForm">
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white mb-4">New Patient Registration</h3>
                <form action="/nurse/register-patient" method="POST" class="space-y-4">
                    <div>
                        <label for="firstName" class="block text-sm font-medium text-slate-700 dark:text-slate-300">First Name:</label>
                        <input type="text" id="firstName" name="firstName" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                    </div>
                    <div>
                        <label for="lastName" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Last Name:</label>
                        <input type="text" id="lastName" name="lastName" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                    </div>
                    <div>
                        <label for="newSsn" class="block text-sm font-medium text-slate-700 dark:text-slate-300">SSN:</label>
                        <input type="text" id="newSsn" name="ssn" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                    </div>
                    <div>
                        <label for="birthdate" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Birthdate:</label>
                        <input type="date" id="birthdate" name="birthdate" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                    </div>
                    <!-- Other personal info fields -->
                    <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Register & Add to Queue</button>
                </form>
            </div>
            <%
                // }
            %>
        </div>















        <!-- Waiting Queue List (dynamic data from JSP/backend) -->
        <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Waiting Queue</h2>
            <ul class="divide-y divide-slate-200 dark:divide-slate-700">
                <%
                    // This is where JSP would iterate over a list of patients fetched from the DB
                    // List<Patient> waitingPatients = (List<Patient>) request.getAttribute("waitingPatients");
                    // if (waitingPatients != null) {
                    //     for (Patient patient : waitingPatients) {
                %>
                <li class="flex items-center justify-between py-4">
                    <div class="flex flex-col">
                        <span class="font-semibold text-slate-900 dark:text-white"><%= "patient.getFullName()" %></span>
                        <span class="text-sm text-slate-600 dark:text-slate-400">SSN: <%= "patient.getMaskedSSN()" %> • Arrived: <%= "patient.getArrivalTime()" %></span>
                    </div>
                    <a href="/nurse/patient-details?id=<%= "patient.getId()" %>" class="text-sky-600 dark:text-sky-400 hover:underline text-sm">View Details</a>
                </li>
                <%
                    //     }
                    // } else {
                %>
                <li class="py-4 text-slate-600 dark:text-slate-400">No patients currently in the waiting queue.</li>
                <%
                    // }
                %>
            </ul>
            <div class="mt-6 text-center">
                <a href="/nurse/full-queue" class="btn-primary px-6 py-3 rounded-lg font-semibold">View Full Queue</a>
            </div>
        </div>
    </div>
</main>

<!-- Footer (simplified for dashboards, optional) -->
<footer class="bg-white dark:bg-slate-900 border-t border-slate-200 dark:border-slate-700 py-6 text-center text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300 mt-auto">
    &copy; 2025 MediCare Portal. All rights reserved.
</footer>

</body>