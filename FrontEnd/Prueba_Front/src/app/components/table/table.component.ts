import { Component } from '@angular/core';
import DB from 'src/assets/json/DB.json';
import { FormBuilder, FormGroup } from '@angular/forms';

interface TableData {
  userName: string;
  subject: string;
  customerSatisfaction: number;
  priority: string;
  status: string;
}

@Component({
  selector: 'app-table',
  templateUrl: './table.component.html',
  styleUrls: ['./table.component.css']

})
export class TableComponent {
  jsonData: any = DB;
  items: TableData[] = [];
  filteredItems: TableData[] = [];
  formGroup: FormGroup;

  priorityOptions = ['All', 'Low', 'Medium', 'High'];
  statusOptions = ['All', 'Pending', 'Open', 'Solved'];
  customerSatisfactionOptions = ['All', 1, 2, 3, 4, 5];
  selectedPriority = 'All';
  selectedStatus = 'All';
  selectedCustomerSatisfaction = 'All';

  //Constructor de clase y extraccion de datos de archivo Json
  constructor(private formBuilder: FormBuilder) {
    this.items = this.jsonData.map((item: any) => {
      return {
        userName: item.userName,
        subject: item.subject,
        customerSatisfaction: item.customerSatisfaction,
        priority: item.priority,
        status: item.status
      };
    });
    this.filteredItems = this.items;

    this.formGroup = this.formBuilder.group({
      priority: [this.selectedPriority],
      status: [this.selectedStatus],
      customerSatisfaction: [this.selectedCustomerSatisfaction]
    });

    this.resetFilters();
  }

  // Funcion de filtrado
  filterData(value: string, field: string) {
    this.filteredItems = this.items.filter((item) => {
      if (value === '' || value === null) {
        return true;
      } else if (field === 'userName') {
        return item.userName.toLowerCase().includes(value.toLowerCase());
      } else if (field === 'priority') {
        return item.priority.toLowerCase() === value.toLowerCase();
      } else if (field === 'status') {
        return item.status.toLowerCase() === value.toLowerCase();
      } else if (field === 'customerSatisfaction') {
        return item.customerSatisfaction.toString() === value;
      } else if (field === 'subject') {
        return item.subject.toLowerCase().includes(value.toLowerCase());
      }
      return false;
    });

    this.showTable();
  }

  //Reseteo de filtros, muestra la tabla en su valor inicial
  resetFilters() {
    this.filteredItems = this.items;
    this.selectedPriority = 'All';
    this.selectedStatus = 'All';
    this.selectedCustomerSatisfaction = 'All';
    this.priorityOptions = ['All', 'Low', 'Medium', 'High'];
    this.statusOptions = ['All', 'Pending', 'Open', 'Solved'];
    this.customerSatisfactionOptions = ['All', 1, 2, 3, 4, 5];

    this.formGroup.patchValue({
      priority: this.selectedPriority,
      status: this.selectedStatus,
      customerSatisfaction: this.selectedCustomerSatisfaction
    });
  }

  // Funcion para mostrar tabla
  showTable() {
  }
}
