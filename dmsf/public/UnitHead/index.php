</!DOCTYPE html>
<html>

<head>
    <title>Job Order System
    </title>
    <link href="../UIKIT/css/uikit.css" rel="stylesheet" type="text/css">
    <link href="../UIKIT/js/uikit.js" rel="stylesheet" type="text/css">
    <link href="../stylecss.css" rel="stylesheet" type="text/css">
</head>

<body class="ind-body">
    <div class="uk-container uk-animation-fade">
        <div class="uk-card request-table-card uk-position-center uk-card-default">
            <div class="top-section">
                <p class="dept-name">OPERATING ROOM</p>
                <div class="uk-inline float">
                    <a class="user-details" href="#">Diane, UnitHead</a>
                    <div uk-drop="mode: click">
                        <a class="logout">Logout</a>
                    </div>
                </div>
            </div>
            <div class="request-list">
                <input class="uk-input uk-form-small date-sort" type="date" name="from-date-sort">
                <input class="uk-input uk-form-small date-sort" type="date" name="to-date-sort">
                <button class="uk-button search-button uk-button-default " type="button">SEARCH</button>
                <div class="uk-card uk-card-default">
                    <button class="uk-button uk-button-default request-button" type="button" name="new-request" uk-icon="plus" uk-toggle="target: #request-form">NEW REQUEST</button>
                </div>
                <div class=" table-container uk-margin">
                    <br>
                    <ul class="uk-subnav uk-subnav-pill" uk-switcher="animation: uk-animation-fade">
                        <li><a href="#">All List</a></li>
                        <li><a href="#">Pending List</a></li>
                        <li><a href="#">Approved List</a></li>
                    </ul>
                    <ul class="uk-switcher uk-margin">
                        <li>
                            <div class="uk-table tableMargin">
                                <table class="uk-table request-table uk-table-responsive uk-table-divider">
                                    <thead class="req-thead">
                                        <tr>
                                            <th>JOB ORDER #</th>
                                            <th>REQUEST BY:</th>
                                            <th>REQUEST TO:</th>
                                            <th>JOB ORDER TITLE</th>
                                            <th>JO DATE</th>
                                            <th>STATUS</th>
                                        </tr>
                                    </thead>
                                    <tbody class="req-td">
                                        <tr>
                                            <td>01</td>
                                            <td>Diane Cervantes</td>
                                            <td>ISDU</td>
                                            <td>PRINTER DEFECTIVE</td>
                                            <td>7|09|2018</td>
                                            <td>PENDING</td>
                                        </tr>
                                        <tr>
                                            <td>02</td>
                                            <td>Diane Cervantes</td>
                                            <td>ISDU</td>
                                            <td>KEYBOARD DEFECTIVE</td>
                                            <td>7|10|2018</td>
                                            <td>PENDING</td>
                                        </tr>
                                    </tbody>
                                </table>
                        </li>
                        <li>
                            <div class="uk-table tableMargin">
                                <table class="uk-table request-table uk-table-responsive uk-table-divider">
                                    <thead class="req-thead">
                                        <tr>
                                            <th>JOB ORDER #</th>
                                            <th>REQUEST BY:</th>
                                            <th>REQUEST TO:</th>
                                            <th>JOB ORDER TITLE</th>
                                            <th>JO DATE</th>
                                            <th>STATUS</th>
                                        </tr>
                                    </thead>
                                    <tbody class="req-td">
                                        <tr>
                                            <td>01</td>
                                            <td>Diane Cervantes</td>
                                            <td>ISDU</td>
                                            <td>PRINTER DEFECTIVE</td>
                                            <td>7|09|2018</td>
                                            <td>PENDING</td>
                                        </tr>
                                        <tr>
                                            <td>02</td>
                                            <td>Diane Cervantes</td>
                                            <td>ISDU</td>
                                            <td>KEYBOARD DEFECTIVE</td>
                                            <td>7|10|2018</td>
                                            <td>PENDING</td>
                                        </tr>
                                    </tbody>
                                </table>
                        </li>
                        <li>
                            <div class="uk-table tableMargin">
                                <table class="uk-table request-table uk-table-responsive uk-table-divider">
                                    <thead class="req-thead">
                                        <tr>
                                            <th>JOB ORDER #</th>
                                            <th>REQUEST BY:</th>
                                            <th>REQUEST TO:</th>
                                            <th>JOB ORDER TITLE</th>
                                            <th>JO DATE</th>
                                            <th>STATUS</th>
                                        </tr>
                                    </thead>
                                    <tbody class="req-td">
                                        <tr>
                                            <td>01</td>
                                            <td>Diane Cervantes</td>
                                            <td>ISDU</td>
                                            <td>PRINTER DEFECTIVE</td>
                                            <td>7|09|2018</td>
                                            <td>PENDING</td>
                                        </tr>
                                        <tr>
                                            <td>02</td>
                                            <td>Diane Cervantes</td>
                                            <td>ISDU</td>
                                            <td>KEYBOARD DEFECTIVE</td>
                                            <td>7|10|2018</td>
                                            <td>PENDING</td>
                                        </tr>
                                    </tbody>
                                </table>
                        </li>
                        </div>
                    </ul>
                    </div>
                    </div>
                </div>
                <div id="request-form" uk-modal>
                    <div class="uk-modal-dialog req-modal uk-modal-body uk-margin" uk-overflow-auto>
                        <h2 class="uk-modal-title">REQUEST FORM</h2>
                        <p>Date:
                            <input class="uk-input modal-input" type="datetime-local" readonly>
                        </p>
                        <p>Name:
                            <input class="uk-input modal-input" type="text" name="request-name" readonly>
                        </p>
                        <p>Department:
                            <input class="uk-input modal-input" type="text" name="dept-name" readonly>
                        </p>
                        <p>Requst To:
                            <div class="disp-inline">
                                <div uk-form-custom="target: > * > span:first-child">
                                    <select>
                                        <option value="">Please select...</option>
                                        <option value="1">Engineering</option>
                                        <option value="2">ISDU</option>
                                        <option value="3">Option 03</option>
                                        <option value="4">Option 04</option>
                                    </select>
                                    <button class="uk-button uk-button-default" type="button" tabindex="-1">
                                        <span></span>
                                        <span uk-icon="icon: chevron-down"></span>
                                    </button>
                                </div>
                            </div>
                        </p>
                        <p class="job-order-title">JOB ORDER TITLE:
                            <input class="uk-input modal-input job-tittle" type="text">
                        </p>
                        <p>Description Of The Problem:</p>
                        <textarea class="uk-textarea" rows="6"></textarea>


                        <p class="uk-text-right">
                            <button class="uk-button uk-button-default uk-modal-close" type="button">Cancel</button>
                            <button class="uk-button uk-button-primary" type="submit">Submit</button>
                        </p>
                    </div>
                </div>
            </div>

            <script src="../Jquery/jquery-1.10.2.min.js"></script>
            <script src="../Jquery/jquery.min.js"></script>
            <script src="../UIKIT/js/uikit.js"></script>
</body>

</html>