//Helper functions

const isEmail = email => {
    const regEx = /[a-z0-9\._%+!$&*=^|~#%'`?{}/\-]+@([a-z0-9\-]+\.){1,}([a-z]{2,16})/;
    if (email.match(regEx)) return true;
    else return false;
};
const isEmpty = string => {
    if (!string) return true;
    if (string.trim() === "") return true;
    else return false;
};

const isEqual = (string1, string2) => {
    if (string1 === string2) return true;
    else return false;
};

const isLessThan = (string, len) => {
    if (string.length < len) return true;
    else return false;
};

exports.validateSignUpData = data => {
    let errors = {};

    if (isEmpty(data.email)) {
        errors.email = "Email must not be empty";
    } else if (!isEmail(data.email)) {
        errors.email = "Email be a valid email address";
    }

    if (isEmpty(data.full_name))
        errors.full_name = "Fullname must not be empty";
    if (isEmpty(data.reg_service_number))
        errors.reg_service_number = "Service number must not be empty";
    if (isEmpty(data.rank)) errors.rank = "Rank must not be empty";
    if (isEmpty(data.unit)) errors.unit = "Unit number must not be empty";
    if (isEmpty(data.salary_step))
        errors.salary_step = "Salary step must not be empty";
    if (isEmpty(data.phone)) errors.phone = "Phone must not be empty";
    // if(isEmpty(data.ucommand)) errors.ucommand = 'Unit commander must not be empty'
    if (isEmpty(data.ucommandfin))
        errors.ucommandfin =
            "Unit commander & Finance officer must not be empty";
    // if(isEmpty(data.clerk)) errors.clerk = 'Finance officer/clerk must not be empty'

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateLoginData = data => {
    let errors = {};

    if (isEmpty(data.username)) errors.username = "Username must not be empty";
    if (isEmpty(data.password)) errors.password = "Password must not be empty";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateResetData = data => {
    let errors = {};

    if (isEmpty(data.service_number))
        errors.service_number = "Service number must not be empty";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateResetPassData = data => {
    let errors = {};

    if (isEmpty(data.password)) errors.password = "Password must not be empty";
    if (isEmpty(data.password_confirmation))
        errors.password_confirmation =
            "Password confirmation must not be empty";
    if (!isEqual(data.password, data.password_confirmation))
        errors.match = "Password must match";
    if (isLessThan(data.password, 6))
        errors.length = "Password must more than 6 characters";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

// change password
exports.validatePassChangeData = data => {
    let errors = {};

    if (isEmpty(data.cpassword))
        errors.cpassword = "Current Password must not be empty";
    if (isEmpty(data.npassword))
        errors.npassword = "New Password must not be empty";
    if (!isEqual(data.cpassword, data.npassword))
        errors.match = "Password must match";
    if (isLessThan(data.cpassword, 6))
        errors.length = "Current Password must more than 6 characters";
    if (isLessThan(data.npassword, 6))
        errors.length = "New Password must more than 6 characters";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

// end change password

exports.validateSubscription = data => {
    let errors = {};

    if (isEmpty(data.email)) {
        errors.email = "Email must not be empty";
    } else if (!isEmail(data.email)) {
        errors.email = "Email be a valid email address";
    }

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateContactUsData = data => {
    let errors = {};

    if (isEmpty(data.fname)) errors.fname = "Name must not be empty";
    if (isEmpty(data.email)) {
        errors.email = "Email must not be empty";
    } else if (!isEmail(data.email)) {
        errors.email = "Email be a valid email address";
    }
    if (isEmpty(data.message)) errors.message = "Message must not be empty";
    if (isLessThan(data.message, 20))
        errors.message = "Message must have more than 20 charcters";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validatePersonalInfoData = data => {
    let errors = {};

    if (isEmpty(data.fname)) errors.fname = "First Name must not be empty";
    if (isEmpty(data.lname)) errors.lname = "Last name  must not be empty";
    if (isEmpty(data.service_number))
        errors.service_number = "Service number must not be empty";

    if (isEmpty(data.email)) {
        errors.email = "Email must not be empty";
    } else if (!isEmail(data.email)) {
        errors.email = "Email be a valid email address";
    }
    if (isEmpty(data.rank)) errors.rank = "Rank must not be empty";
    if (isEmpty(data.phone)) errors.phone = "Phone must not be empty";
    if (isEmpty(data.info)) errors.info = "Info  must not be empty";
    if (isEmpty(data.salary)) errors.salary = "Salary step  must not be empty";
    if (isEmpty(data.location)) errors.location = "Location  must not be empty";
    if (isEmpty(data.unit)) errors.unit = "Unit  must not be empty";
    if (isEmpty(data.address)) errors.address = "Address  must not be empty";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateGeneratePayslipData = data => {
    let errors = {};

    if (isEmpty(data.fname)) errors.fname = "First Name must not be empty";
    if (isEmpty(data.lname)) errors.lname = "Last name  must not be empty";
    if (isEmpty(data.oname)) errors.oname = "Other name  must not be empty";
    if (isEmpty(data.fdate)) errors.fdate = "From date  must not be empty";
    if (isEmpty(data.tdate)) errors.tdate = "To date  must not be empty";
    if (isEmpty(data.service_number))
        errors.service_number = "Service number must not be empty";

    if (isEmpty(data.email)) {
        errors.email = "Email must not be empty";
    } else if (!isEmail(data.email)) {
        errors.email = "Email be a valid email address";
    }
    if (isEmpty(data.rank)) errors.rank = "Rank must not be empty";
    if (isEmpty(data.phone)) errors.phone = "Phone must not be empty";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateFinancialAdviceData = data => {
    let errors = {};

    if (isEmpty(data.fname)) errors.fname = "First Name must not be empty";
    if (isEmpty(data.lname)) errors.lname = "Last name  must not be empty";
    if (isEmpty(data.oname)) errors.oname = "Other name  must not be empty";
    if (isEmpty(data.service_number))
        errors.service_number = "Service number must not be empty";

    if (isEmpty(data.email)) {
        errors.email = "Email must not be empty";
    } else if (!isEmail(data.email)) {
        errors.email = "Email be a valid email address";
    }
    if (isEmpty(data.rank)) errors.rank = "Rank must not be empty";
    if (isEmpty(data.phone)) errors.phone = "Phone must not be empty";

    if (isEmpty(data.services))
        errors.services = "Finacial Services must not be empty";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateAlertPaymentData = data => {
    let errors = {};

    if (isEmpty(data.fname)) errors.fname = "First Name must not be empty";
    if (isEmpty(data.lname)) errors.lname = "Last name  must not be empty";
    if (isEmpty(data.oname)) errors.oname = "Other name  must not be empty";
    if (isEmpty(data.service_number))
        errors.service_number = "Service number must not be empty";

    if (isEmpty(data.email)) {
        errors.email = "Email must not be empty";
    } else if (!isEmail(data.email)) {
        errors.email = "Email be a valid email address";
    }
    if (isEmpty(data.rank)) errors.rank = "Rank must not be empty";
    if (isEmpty(data.phone)) errors.phone = "Phone must not be empty";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateAppDownloadData = data => {
    let errors = {};

    if (isEmpty(data.email)) {
        errors.email = "Email must not be empty";
    } else if (!isEmail(data.email)) {
        errors.email = "Email be a valid email address";
    }
    if (isEmpty(data.platform))
        errors.platform = "Mobile Platform must be Selected";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateComplaintData = data => {
    let errors = {};

    if (isEmpty(data.fname)) errors.fname = "First Name must not be empty";
    if (isEmpty(data.lname)) errors.lname = "Last name  must not be empty";

    if (isEmpty(data.oname)) errors.oname = "Other name  must not be empty";

    if (isEmpty(data.complaints))
        errors.complaints = "Complaints  must not be empty";
    if (isEmpty(data.service_number))
        errors.service_number = "Service number must not be empty";

    if (isEmpty(data.email)) {
        errors.email = "Email must not be empty";
    } else if (!isEmail(data.email)) {
        errors.email = "Email be a valid email address";
    }
    if (isEmpty(data.rank)) errors.rank = "Rank must not be empty";
    if (isEmpty(data.phone)) errors.phone = "Phone must not be empty";

    if (isEmpty(data.description))
        errors.description = "Description must not be empty";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateUploadNewsData = data => {
    let errors = {};

    if (isEmpty(data.teams)) errors.teams = "Teams must not be empty";
    if (isEmpty(data.tip)) errors.tip = "Tip must not be empty";

    //if(isEmpty(data.description)) errors.description = 'Description must not be empty';

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateUploadLeadersData = (data, edit) => {
    let errors = {};

    if (isEmpty(data.name)) errors.name = "Name must not be empty";
    if (isEmpty(data.body)) errors.body = "Body must not be empty";
    if (edit == false) {
        if (data.image.length < 2) errors.image = "You need to select an image";
    }
    //if(isEmpty(data.description)) errors.description = 'Description must not be empty';

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};
exports.validateUploadRenditionData = (data, edit) => {
    let errors = {};

    if (isEmpty(data.title)) errors.title = "Title must not be empty";
    if (isEmpty(data.type)) errors.type = "Type must not be empty";
    if (isEmpty(data.summary)) errors.summary = "Summary must not be empty";
    if (edit == false) {
        if (data.doc.length < 2)
            errors.document = "You need to select a document";
    }

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateUploadDocumentData = data => {
    let errors = {};

    if (isEmpty(data.title)) errors.title = "Title must not be empty";
    if (isEmpty(data.category)) errors.category = "Category must not be empty";
    if (isEmpty(data.summary)) errors.summary = "Summary must not be empty";
    if (data.doc.length < 2) errors.document = "You need to select a document";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateUploadEventsData = (data, edit) => {
    let errors = {};

    if (isEmpty(data.name)) errors.name = "Name must not be empty";
    if (isEmpty(data.body)) errors.body = "Body must not be empty";
    if (isEmpty(data.date)) errors.date = "Date must not be empty";
    if (isEmpty(data.location)) errors.location = "Location must not be empty";
    if (edit == false) {
        if (data.image.length < 2) errors.image = "You need to select an image";
    }
    //if(isEmpty(data.description)) errors.description = 'Description must not be empty';

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

//photo validator
exports.validateUploadPhotosData = (data, edit) => {
    let errors = {};

    if (isEmpty(data.url)) errors.url = "URL must not be empty";
    if (edit == false) {
        if (data.image.length < 2) errors.image = "You need to select an image";
    }
    //if(isEmpty(data.description)) errors.description = 'Description must not be empty';

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

// videos vallidator
exports.validateUploadVideosData = (data, edit) => {
    let errors = {};

    if (isEmpty(data.title)) errors.title = "Title must not be empty";
    if (isEmpty(data.link)) errors.link = "Link must not be empty";

    //if(isEmpty(data.description)) errors.description = 'Description must not be empty';

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};
// end videos

// App Notify vallidator
exports.validatePushNotificationData = (data, edit) => {
    let errors = {};

    if (isEmpty(data.title)) errors.title = "Title must not be empty";
    if (isEmpty(data.body)) errors.body = "Body must not be empty";

    //if(isEmpty(data.description)) errors.description = 'Description must not be empty';

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};
// end App notify

// Digest vallidator
exports.validateUploadDigestsData = (data, edit) => {
    let errors = {};

    if (isEmpty(data.title)) errors.title = "Title must not be empty";
    if (isEmpty(data.link)) errors.link = "Link must not be empty";
    if (edit == false) {
        if (data.image.length < 2) errors.image = "You need to select an image";
    }
    //if(isEmpty(data.description)) errors.description = 'Description must not be empty';

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};
// end Digests

// profile vallidator
exports.validateProfileData = data => {
    let errors = {};
    if (isEmpty(data.rank)) errors.rank = "Rank must not be empty";
    if (isEmpty(data.unit)) errors.unit = "Unit must not be empty";
    if (isEmpty(data.commander) & isEmpty(data.clerk))
        errors.commandClerk = "Unit Commander & Unit Clerk must not be empty";
    if (data.phone.length < 11)
        errors.phone = "Phone number must not be less than 11 digits";
    if (data.image.length < 1) errors.image = "You need to select an image";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};
// end profile

exports.validateTermsData = data => {
    let errors = {};

    if (isEmpty(data.body)) errors.body = "Body must not be empty";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

exports.validateSocialData = data => {
    let errors = {};

    if (isEmpty(data.facebook))
        errors.facebook = "Facebook Field must not be empty";
    if (isEmpty(data.twitter))
        errors.twitter = "Twitter Field must not be empty";
    if (isEmpty(data.telegram))
        errors.telegram = "Telegram Field must not be empty";

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};

// paypoint validation
exports.validatePaypointData = data => {
    let errors = {};

    if (isEmpty(data.name)) errors.name = "Name must not be empty";
    if (isEmpty(data.position)) errors.position = "Position must not be empty";
    if (isEmpty(data.location))
        errors.location = "Paypoint/Department must not be empty";
    if (isEmpty(data.profile))
        errors.profile = "Profile Description must not be empty";
    if (data.image.length < 2) errors.image = "You need to select an image";

    //if(isEmpty(data.description)) errors.description = 'Description must not be empty';

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};
// end paypoint

// formation validation
exports.validateFormationData = data => {
    let errors = {};

    if (isEmpty(data.name)) errors.name = "Name must not be empty";
    if (isEmpty(data.position)) errors.position = "Position must not be empty";
    if (isEmpty(data.location))
        errors.location = "Formation/Unit must not be empty";
    if (isEmpty(data.profile))
        errors.profile = "Profile Description must not be empty";
    if (data.image.length < 2) errors.image = "You need to select an image";

    //if(isEmpty(data.description)) errors.description = 'Description must not be empty';

    return {
        errors,
        valid: Object.keys(errors).length === 0 ? true : false
    };
};
// end formation

exports.reduceUserDetails = data => {
    let userDetails = {};

    if (!isEmpty(data.bio.trim())) userDetails.bio = data.bio;
    if (!isEmpty(data.website.trim())) {
        //https://website.com
        if (data.website.trim().substring(0, 4) !== "http") {
            userDetails.website = `http://${data.website.trim()}`;
        } else userDetails.website = data.website;
    }
    if (!isEmpty(data.location.trim())) userDetails.location = data.location;

    return userDetails;
};
