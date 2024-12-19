// pipes/phone-format.pipe.ts
import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'phoneFormat'
})
export class PhoneFormatPipe implements PipeTransform {
  transform(phone: string): string {
    if (!phone) return '';

    // Eliminar todos los espacios existentes
    phone = phone.replace(/\s/g, '');

    // Asegurarse que comience con +569
    if (!phone.startsWith('+569')) {
      phone = '+569' + phone;
    }

    // Agregar espacios cada 4 caracteres
    return phone.replace(/(\d{4})/g, '$1 ').trim();
  }
}
