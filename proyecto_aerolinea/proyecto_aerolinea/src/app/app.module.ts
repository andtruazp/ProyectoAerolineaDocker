//import { ServicioFactory } from 'src/app/models/servicios';
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AgregaEmpresaComponent } from './components/agrega-empresa/agrega-empresa.component';
import { AgregaVuelosComponent } from './components/agrega-vuelos/agrega-vuelos.component';
import { ReservasComponent } from './components/reservas/reservas.component';
import { HomeComponent } from './components/home/home.component';
import { LoginComponent } from './components/login/login.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';
import { ServiciosVuelosComponent } from './components/servicios-vuelos/servicios-vuelos.component';
import { ServicioFactoriesModule } from './components/servicios-vuelos/servicio-factories.module';

@NgModule({
  declarations: [
    AppComponent,
    AgregaEmpresaComponent,
    AgregaVuelosComponent,
    ReservasComponent,
    HomeComponent,
    LoginComponent,
    ServiciosVuelosComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    ServicioFactoriesModule,
  ],
  providers: [
    //ServicioFactory,
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
