<?php

namespace App\Traits;


use App\Mail\ServicesMail;
use App\Mail\ContactUsMail;
use App\Mail\ResetMail;
use App\Mail\WelcomeMail;
use App\Mail\DownloadMail;
use Carbon\Carbon;

trait MailJob
{
    protected $user;
    /**
     * @var Mailable
    */
    protected $mail;
    
    public function QMail($user,$type,$case)
    {   
        $this->user = $user;
        switch($case){
           case "reset":
                $this->mail = new ResetMail($type); 
                break;
            case "contact":
                $this->mail = new ContactUsMail($type);
                break;
            case "service":
                $this->mail = new ServicesMail($type);
                break; 
            case "user":
                $this->mail = new WelcomeMail($type);
                break; 
            case "download":
                $this->mail = new DownloadMail($type);
                break; 
            default:
                $this->mail = new ContactUsMail($type);
                break;
        }

        
    }
}

?>