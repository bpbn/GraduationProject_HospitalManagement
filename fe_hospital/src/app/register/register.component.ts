import { Component } from '@angular/core';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent {
  // registerRequest: RegistertionRequest = {email: '', firstname: '', lastname: '', password: ''};
  // errorMsg: Array<string> = [];

  // constructor(
  //   private router: Router,
  //   private authService: AuthenticationService
  // ) {
  // }

  // login() {
  //   this.router.navigate(['login']);
  // }

  // register() {
  //   this.errorMsg = [];
  //   this.authService.register({
  //     body: this.registerRequest
  //   })
  //     .subscribe({
  //       next: () => {
  //         this.router.navigate(['activate-account']);
  //       },
  //       error: (err) => {
  //         this.errorMsg = err.error.validationErrors;
  //       }
  //     });
  // }
}
