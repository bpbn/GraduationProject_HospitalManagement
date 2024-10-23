import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule, provideAnimations } from '@angular/platform-browser/animations';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { CardDatlichComponent } from './card-datlich/card-datlich.component';
import { DatlichComponent } from './datlich/datlich.component';
import { CtbacsiComponent } from './ctbacsi/ctbacsi.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { TrangchuComponent } from './trangchu/trangchu.component';
import { HttpClientModule, provideHttpClient, withFetch } from '@angular/common/http';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { MatNativeDateModule } from '@angular/material/core';
import { MatInputModule } from '@angular/material/input';
import { MatRadioModule } from '@angular/material/radio';
import { FormsModule } from '@angular/forms';
import { MatCardModule } from '@angular/material/card';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { ListDoctorsComponent } from './list-doctors/list-doctors.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegisterComponent,
    TrangchuComponent,
    DatlichComponent,
    ListDoctorsComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    MatSnackBarModule,
    MatNativeDateModule,
    FormsModule,
    MatInputModule,
    MatRadioModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    HeaderComponent,
    FooterComponent,
    CardDatlichComponent,
    CtbacsiComponent,
    MatCardModule,
    MatDatepickerModule,
    HttpClientModule
],
  providers: [
    provideAnimations(),
    provideHttpClient(),
    provideHttpClient(withFetch()),
    
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
