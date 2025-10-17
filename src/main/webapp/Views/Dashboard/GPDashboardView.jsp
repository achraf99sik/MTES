<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <span class="text-xl font-bold text-slate-500 dark:text-slate-400 transition-colors duration-300 ml-4">/ ${title}</span>
            </div>

            <!-- User Info and Logout -->
            <div class="flex items-center gap-4">
                <span class="text-slate-600 dark:text-slate-300 text-sm font-medium">Welcome, Dr. Williams</span>
                <a href="/logout" class="btn-secondary px-4 py-1.5 rounded-lg font-semibold">
                    Logout
                </a>
            </div>
        </div>
    </div>
</nav>

<!-- Main Content -->
<main class="flex-grow max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="space-y-8">
        <h1 class="text-3xl font-bold text-slate-900 dark:text-white transition-colors duration-300">General Practitioner Dashboard</h1>

        <!-- Stats Overview -->
        <div class="grid md:grid-cols-3 gap-6">
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">Upcoming Appointments</h2>
                    <svg class="w-6 h-6 text-blue-500" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" clip-rule="evenodd"></path></svg>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">7</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Today and tomorrow</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">Pending Expertise</h2>
                    <svg class="w-6 h-6 text-orange-500" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M18 8a6 6 0 01-7.743 5.743L10 14l-2 2-2 2H2v-.293a6.002 6.002 0 0113.447-4.103C15.548 9.947 16 9 16 9c-1.554-.863-3.08-2.02-4.52-3.414A5.992 5.992 0 0118 8zM15 10a3 3 0 11-6 0 3 3 0 016 0z" clip-rule="evenodd"></path></svg>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">3</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Requests awaiting response</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
                <div class="flex items-center justify-between mb-4">
                    <h2 class="text-lg font-semibold text-slate-900 dark:text-white">Consultations Today</h2>
                    <svg class="w-6 h-6 text-green-500" fill="currentColor" viewBox="0 0 20 20"><path d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path></svg>
                </div>
                <div class="text-4xl font-bold text-slate-900 dark:text-white">4</div>
                <p class="text-sm text-slate-600 dark:text-slate-400">Completed consultations</p>
            </div>
        </div>

        <!-- Quick Actions -->
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            <a href="#createConsultationSection" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-blue-100 dark:bg-blue-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-blue-600 dark:text-blue-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">Create New Consultation</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Record patient visit details.</p>
            </a>
            <a href="#requestExpertiseSection" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-purple-100 dark:bg-purple-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-purple-600 dark:text-purple-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">Request Specialist Expertise</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Consult with a specialist doctor.</p>
            </a>
            <a href="#calculateCostSection" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-teal-100 dark:bg-teal-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-teal-600 dark:text-teal-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 4v1m-6-12H4m16 0h2.5M4 16h2.5M18 16h2.5M6 12a1 1 0 11-2 0 1 1 0 012 0zm12 0a1 1 0 11-2 0 1 1 0 012 0z"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">Calculate Patient Costs</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Review consultation and service charges.</p>
            </a>
            <!-- NEW: View Today's Patients -->
            <a href="#todaysPatientsSection" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-indigo-100 dark:bg-indigo-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-indigo-600 dark:text-indigo-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h2a2 2 0 002-2V7.414A2 2 0 0018.586 6L15 2.414A2 2 0 0013.586 2H7a2 2 0 00-2 2v14a2 2 0 002 2h4m-12-7h12"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">View Today's Patients</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">See your schedule for today.</p>
            </a>
            <!-- NEW: View Expertise Responses -->
            <a href="#expertiseResponsesSection" class="feature-card bg-white dark:bg-slate-800 rounded-xl p-6 shadow border border-slate-200 dark:border-slate-700 flex flex-col items-center text-center gap-3 group">
                <div class="w-16 h-16 bg-yellow-100 dark:bg-yellow-900/30 rounded-full flex items-center justify-center transition-colors duration-300">
                    <svg class="w-8 h-8 text-yellow-600 dark:text-yellow-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.47 6.659 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"></path></svg>
                </div>
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white group-hover:text-sky-500">View Expertise Responses</h3>
                <p class="text-slate-600 dark:text-slate-300 text-sm">Review specialist opinions.</p>
            </a>
        </div>

        <div id="calculateCostSection" class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300 mt-8">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Calculate Total Patient Cost</h2>

            <form action="/gp/calculate-cost" method="POST" class="space-y-4 mb-6">
                <div>
                    <label for="costPatientSelect" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Select Patient:</label>
                    <select id="costPatientSelect" name="patientId" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                        <option value="">-- Select a patient --</option>
                        <!-- Populate dynamically with actual patient data -->
                        <option value="patient1">John Doe (SSN: ***-**-1234)</option>
                        <option value="patient2">Jane Smith (SSN: ***-**-5678)</option>
                    </select>
                </div>
                <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Calculate Costs</button>
            </form>

            <%
                // Example: if totalCost is found in request scope after calculation
                // Double totalCost = (Double) request.getAttribute("totalCost");
                // if (totalCost != null) {
            %>
            <div id="costDisplay" class="mt-6 p-4 border border-sky-200 dark:border-sky-700 bg-sky-50 dark:bg-sky-900/30 rounded-lg">
                <h3 class="text-xl font-semibold text-slate-900 dark:text-white mb-2">Total Cost for Patient [Patient Name Placeholder]:</h3>
                <p class="text-3xl font-bold text-sky-600 dark:text-sky-300"><%= "350.00" %> DH</p> <%-- Static placeholder for totalCost --%>
                <p class="text-sm text-slate-600 dark:text-slate-400">Includes consultations, expertise, and other medical acts.</p>
            </div>
            <%
                // }
            %>
        </div>


        <div id="createConsultationSection" class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300 mt-8">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Create New Consultation</h2>

            <form action="create-consultation" method="POST" class="space-y-4">
                <div>
                    <label for="patientSelect" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Select Patient:</label>
                    <select id="patientSelect" name="patientId" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                        <option value="">-- Select a patient --</option>
                        <c:forEach items="${queues}" var="queue">
                            <option value="${queue.patient.id}">${queue.patient.firstName} ${queue.patient.lastName} (SSN: ${queue.patient.socialSecurityNumber})</option> <%-- Static placeholder for patient --%>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <label for="reason" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Reason for Consultation:</label>
                    <input type="text" id="reason" name="reason" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" placeholder="e.g., Follow-up for fever, Routine check-up">
                </div>
                <div>
                    <label for="observations" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Observations:</label>
                    <textarea id="observations" name="observations" rows="5" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" placeholder="e.g., Patient presents with mild cough. Lungs clear."></textarea>
                </div>
                <%-- NEW: Diagnosis input --%>
                <div>
                    <label for="diagnosis" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Diagnosis:</label>
                    <textarea id="diagnosis" name="diagnosis" rows="3" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" placeholder="e.g., Common cold (Acute viral rhinitis)."></textarea>
                </div>
                <%-- NEW: Treatment input --%>
                <div>
                    <label for="treatment" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Treatment:</label>
                    <textarea id="treatment" name="treatment" rows="4" class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" placeholder="e.g., Rest, fluid intake, over-the-counter pain relievers, nasal spray."></textarea>
                </div>
                <div class="text-sm text-slate-600 dark:text-slate-400">Consultation cost: 150 DH (automatically added)</div>
                <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Save Consultation</button>
            </form>
        </div>

        <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Recent Consultations</h2>
            <ul class="divide-y divide-slate-200 dark:divide-slate-700">
                <c:forEach items="${consultations}" var="consultation">
                    <li class="flex items-center justify-between py-4">
                        <div class="flex flex-col">
                            <span class="font-semibold text-slate-900 dark:text-white">Patient: ${consultation.patient.firstName} ${consultation.patient.lastName}</span>
                            <span class="text-sm text-slate-600 dark:text-slate-400">Reason: ${consultation.reason} • Date: ${consultation.createdAt}</span>
                        </div>
                        <a href="consultation-details?id=${consultation.id}" class="text-sky-600 dark:text-sky-400 hover:underline text-sm">View Details</a>
                    </li>
                    <div id="${consultation.id}" class="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50 hidden z-50">

                        <div class="bg-white dark:bg-slate-800 rounded-xl shadow-lg w-full max-w-lg p-6 relative">

                            <button onclick="viewDetails('${consultation.id}')"
                                    class="absolute top-3 right-3 cursor-pointer text-slate-500 hover:text-slate-800 dark:hover:text-white text-2xl font-bold">
                                ×
                            </button>

                            <!-- Patient Header -->
                            <h2 class="text-2xl font-semibold mb-2 text-slate-900 dark:text-white">
                                    ${consultation.patient.firstName} ${consultation.patient.lastName}
                            </h2>
                            <p class="text-sm text-slate-500 dark:text-slate-400 mb-4">
                                SSN: ${consultation.patient.socialSecurityNumber} • Arrival: ${consultation.arrivalTime}
                            </p>

                            <!-- Patient Information -->
                            <div class="border-t border-slate-300 dark:border-slate-700 pt-3 mb-4">
                                <h3 class="text-lg font-medium text-slate-800 dark:text-slate-100 mb-2">Patient Information</h3>
                                <ul class="text-slate-700 dark:text-slate-300 space-y-1 text-sm">
                                    <li><strong>Birth Date:</strong> ${queue.patient.birthDate}</li>
                                    <li><strong>Phone:</strong> ${queue.patient.phone}</li>
                                    <li><strong>Address:</strong> ${queue.patient.address}</li>
                                    <li><strong>Insurance:</strong> ${queue.patient.insurance}</li>
                                    <li><strong>Allergies:</strong> ${queue.patient.allergies}</li>
                                    <li><strong>Medical History:</strong> ${queue.patient.medicalHistory}</li>
                                </ul>
                            </div>

                            <!-- Vital Signs -->
                            <div class="border-t border-slate-300 dark:border-slate-700 pt-3">
                                <h3 class="text-lg font-medium text-slate-800 dark:text-slate-100 mb-2">Recent Vital Signs</h3>

                                <c:forEach items="${queue.patient.vitalSigns}" var="vitals">
                                    <div class="mb-3 text-white p-3 rounded-md bg-slate-50 dark:bg-slate-900/40">
                                        <p><strong>Blood Pressure:</strong> ${vitals.bloodPressure} mmHg</p>
                                        <p><strong>Heart Rate:</strong> ${vitals.heartRate} bpm</p>
                                        <p><strong>Temperature:</strong> ${vitals.temperature} °C</p>
                                        <p><strong>Respiratory Rate:</strong> ${vitals.respiratoryRate} bpm</p>
                                        <p><strong>Weight:</strong> ${vitals.weight} kg</p>
                                        <p><strong>Height:</strong> ${vitals.height} cm</p>
                                        <p class="text-xs text-slate-500 mt-1">
                                            Recorded at: ${vitals.createdAt}
                                        </p>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </ul>
        </div>

        <!-- Inside <main> after Recent Consultations -->
        <div id="requestExpertiseSection" class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300 mt-8">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Request Specialist Expertise</h2>

            <form action="/gp/submit-expertise-request" method="POST" class="space-y-4">
                <div>
                    <label for="expertisePatientSelect" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Patient:</label>
                    <select id="expertisePatientSelect" name="patientId" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                        <option value="">-- Select a patient --</option>
                        <!-- Populate dynamically with actual patient data -->
                        <option value="patient1">John Doe (SSN: ***-**-1234)</option>
                        <option value="patient2">Jane Smith (SSN: ***-**-5678)</option>
                    </select>
                </div>
                <div>
                    <label for="specialtySelect" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Choose Specialty:</label>
                    <select id="specialtySelect" name="specialty" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500">
                        <option value="">-- Select a specialty --</option>
                        <option value="Cardiology">Cardiology</option>
                        <option value="Dermatology">Dermatology</option>
                        <option value="Neurology">Neurology</option>
                        <!-- Populate dynamically from DB -->
                    </select>
                </div>
                <!-- This section below might be dynamically loaded via AJAX after specialty selection -->
                <div id="availableSpecialists" class="space-y-4">
                    <h4 class="text-lg font-semibold text-slate-900 dark:text-white mt-4">Available Specialists:</h4>
                    <div class="border border-slate-200 dark:border-slate-700 rounded-lg p-4">
                        <label class="flex items-center gap-2 mb-2">
                            <input type="radio" name="specialistId" value="[SPECIALIST_ID_1]" class="text-sky-600">
                            <span class="text-slate-900 dark:text-white">Dr. Chen (Cardiologist) - Avg Rate: 200 DH/hr</span>
                        </label>
                        <div class="pl-6">
                            <h5 class="text-md font-medium text-slate-700 dark:text-slate-300 mt-2">Available Slots:</h5>
                            <label class="flex items-center gap-2 text-sm text-slate-600 dark:text-slate-400">
                                <input type="radio" name="slotId" value="[SLOT_ID_A]" class="text-sky-600"> Oct 10, 2025 - 10:00 AM
                            </label>
                            <label class="flex items-center gap-2 text-sm text-slate-600 dark:text-slate-400">
                                <input type="radio" name="slotId" value="[SLOT_ID_B]" class="text-sky-600"> Oct 10, 2025 - 02:00 PM
                            </label>
                        </div>
                    </div>
                    <div class="border border-slate-200 dark:border-slate-700 rounded-lg p-4">
                        <label class="flex items-center gap-2 mb-2">
                            <input type="radio" name="specialistId" value="[SPECIALIST_ID_2]" class="text-sky-600">
                            <span class="text-slate-900 dark:text-white">Dr. Patel (Cardiologist) - Avg Rate: 180 DH/hr</span>
                        </label>
                        <div class="pl-6">
                            <h5 class="text-md font-medium text-slate-700 dark:text-slate-300 mt-2">Available Slots:</h5>
                            <label class="flex items-center gap-2 text-sm text-slate-600 dark:text-slate-400">
                                <input type="radio" name="slotId" value="[SLOT_ID_C]" class="text-sky-600"> Oct 11, 2025 - 09:00 AM
                            </label>
                        </div>
                    </div>
                    <!-- More specialists/slots dynamically loaded -->
                </div>

                <div>
                    <label for="expertiseQuestion" class="block text-sm font-medium text-slate-700 dark:text-slate-300">Your Question/Details for Specialist:</label>
                    <textarea id="expertiseQuestion" name="question" rows="5" required class="block w-full px-4 py-2 border border-slate-300 rounded-lg dark:bg-slate-700 dark:text-white dark:border-slate-600 focus:ring-sky-500 focus:border-sky-500" placeholder="Describe the patient's condition and your specific query."></textarea>
                </div>
                <button type="submit" class="btn-primary px-5 py-2 rounded-lg font-semibold">Submit Expertise Request</button>
            </form>
        </div>

        <!-- NEW SECTION: Today's Patients / Upcoming Appointments -->
        <div id="todaysPatientsSection" class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300 mt-8">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Today's Patients</h2>
            <ul class="divide-y divide-slate-200 dark:divide-slate-700">
                <c:forEach items="${queues}" var="queue">
                    <li class="flex items-center justify-between py-4">
                        <div class="flex flex-col">
                            <span class="font-semibold text-slate-900 dark:text-white">${queue.patient.firstName} ${queue.patient.lastName}</span>
                            <span class="text-sm text-slate-600 dark:text-slate-400">
                                SSN: ${queue.patient.socialSecurityNumber} • Arrival: <span class="arrival-time">${queue.arrivalTime}</span>
                            </span>
                        </div>
                        <a class="text-white cursor-pointer" onclick="viewDetails('${queue.id}')">View Details</a>
                    </li>
                    <!-- Patient Details Popup -->
                    <div id="${queue.id}" class="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50 hidden z-50">

                        <div class="bg-white dark:bg-slate-800 rounded-xl shadow-lg w-full max-w-lg p-6 relative">

                            <button onclick="viewDetails('${queue.id}')"
                                    class="absolute top-3 right-3 cursor-pointer text-slate-500 hover:text-slate-800 dark:hover:text-white text-2xl font-bold">
                                ×
                            </button>

                            <!-- Patient Header -->
                            <h2 class="text-2xl font-semibold mb-2 text-slate-900 dark:text-white">
                                    ${queue.patient.firstName} ${queue.patient.lastName}
                            </h2>
                            <p class="text-sm text-slate-500 dark:text-slate-400 mb-4">
                                SSN: ${queue.patient.socialSecurityNumber} • Arrival: ${queue.arrivalTime}
                            </p>

                            <!-- Patient Information -->
                            <div class="border-t border-slate-300 dark:border-slate-700 pt-3 mb-4">
                                <h3 class="text-lg font-medium text-slate-800 dark:text-slate-100 mb-2">Patient Information</h3>
                                <ul class="text-slate-700 dark:text-slate-300 space-y-1 text-sm">
                                    <li><strong>Birth Date:</strong> ${queue.patient.birthDate}</li>
                                    <li><strong>Phone:</strong> ${queue.patient.phone}</li>
                                    <li><strong>Address:</strong> ${queue.patient.address}</li>
                                    <li><strong>Insurance:</strong> ${queue.patient.insurance}</li>
                                    <li><strong>Allergies:</strong> ${queue.patient.allergies}</li>
                                    <li><strong>Medical History:</strong> ${queue.patient.medicalHistory}</li>
                                </ul>
                            </div>

                            <!-- Vital Signs -->
                            <div class="border-t border-slate-300 dark:border-slate-700 pt-3">
                                <h3 class="text-lg font-medium text-slate-800 dark:text-slate-100 mb-2">Recent Vital Signs</h3>

                                <c:forEach items="${queue.patient.vitalSigns}" var="vitals">
                                    <div class="mb-3 text-white p-3 rounded-md bg-slate-50 dark:bg-slate-900/40">
                                        <p><strong>Blood Pressure:</strong> ${vitals.bloodPressure} mmHg</p>
                                        <p><strong>Heart Rate:</strong> ${vitals.heartRate} bpm</p>
                                        <p><strong>Temperature:</strong> ${vitals.temperature} °C</p>
                                        <p><strong>Respiratory Rate:</strong> ${vitals.respiratoryRate} bpm</p>
                                        <p><strong>Weight:</strong> ${vitals.weight} kg</p>
                                        <p><strong>Height:</strong> ${vitals.height} cm</p>
                                        <p class="text-xs text-slate-500 mt-1">
                                            Recorded at: ${vitals.createdAt}
                                        </p>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <c:if test="${empty queues}">
                    <li class="py-4 text-slate-600 dark:text-slate-400">No patients currently in the waiting queue.</li>
                </c:if>
            </ul>
            <div class="mt-6 text-center">
                <a href="/gp/all-appointments" class="btn-primary px-6 py-3 rounded-lg font-semibold">View All Upcoming Appointments</a>
            </div>
        </div>
        <script>
            function viewDetails(id){
                document.getElementById(id).classList.toggle("hidden");
            }
        </script>

        <!-- NEW SECTION: View Expertise Responses -->
        <div id="expertiseResponsesSection" class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow transition-colors duration-300 mt-8">
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">My Expertise Requests & Responses</h2>
            <ul class="divide-y divide-slate-200 dark:divide-slate-700">
                <%-- Example static expertise request entries --%>
                <li class="flex items-center justify-between py-4">
                    <div class="flex flex-col">
                        <span class="font-semibold text-slate-900 dark:text-white">Patient: Sarah Green • Specialist: Dr. Chen (Cardiology)</span>
                        <span class="text-sm text-slate-600 dark:text-slate-400">Status: <span class="text-green-500 font-medium">Completed</span> • Submitted: 2025-10-08</span>
                        <p class="text-sm text-slate-700 dark:text-slate-300 mt-2"><strong>My Question:</strong> Patient with irregular heartbeat, ECG attached. Advise on next steps.</p>
                        <p class="text-sm text-slate-800 dark:text-slate-200 mt-1"><strong>Specialist Response:</strong> Recommend further tests: Holter monitor and echocardiogram. Consider referral to a cardiologist if abnormalities persist.</p>
                    </div>
                    <a href="/gp/expertise-details?id=exp1" class="text-sky-600 dark:text-sky-400 hover:underline text-sm">View Full Details</a>
                </li>
                <li class="flex items-center justify-between py-4">
                    <div class="flex flex-col">
                        <span class="font-semibold text-slate-900 dark:text-white">Patient: Michael Blue • Specialist: Dr. Smith (Dermatology)</span>
                        <span class="text-sm text-slate-600 dark:text-slate-400">Status: <span class="text-orange-500 font-medium">Pending</span> • Submitted: 2025-10-16</span>
                        <p class="text-sm text-slate-700 dark:text-slate-300 mt-2"><strong>My Question:</strong> Rash on arm, suspect eczema. Any specific topical cream recommendations?</p>
                    </div>
                    <a href="/gp/expertise-details?id=exp2" class="text-sky-600 dark:text-sky-400 hover:underline text-sm">View Status</a>
                </li>
                <%-- Dynamic population logic will go here --%>
            </ul>
            <div class="mt-6 text-center">
                <a href="/gp/all-expertise-requests" class="btn-primary px-6 py-3 rounded-lg font-semibold">View All Expertise Requests</a>
            </div>
        </div>

    </div>
</main>

<!-- Footer (simplified for dashboards, optional) -->
<footer class="bg-white dark:bg-slate-900 border-t border-slate-200 dark:border-slate-700 py-6 text-center text-sm text-slate-600 dark:text-slate-400 transition-colors duration-300 mt-auto">
    &copy; 2025 MediCare Portal. All rights reserved.
</footer>

</body>