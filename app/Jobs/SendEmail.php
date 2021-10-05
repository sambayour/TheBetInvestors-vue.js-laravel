<?php

namespace App\Jobs;


use App\Traits\MailJob as MailTrait;

use Illuminate\Support\Facades\Mail;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class sendEmail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels,MailTrait;
    
    /**
     * Create a new job instance.
     *
     * @return void
     */

    
    public $tries = 5;
    public function __construct($user,$type,$case)
    {
        $this->QMail($user,$type,$case);
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
         Mail::to($this->user)->send($this->mail);
    }
}
