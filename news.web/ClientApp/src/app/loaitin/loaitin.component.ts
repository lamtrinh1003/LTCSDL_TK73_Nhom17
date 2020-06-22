import { Component, OnInit, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
declare var $: any;

@Component({
  selector: 'app-loaitin',
  templateUrl: './loaitin.component.html',
  styleUrls: ['./loaitin.component.css']
})
export class LoaitinComponent implements OnInit {

  loaitins:any = {
    data: [],
    totalRecords: 0,
    page: 0,
    size: 5,
    totalPages: 0
  };
  loaitin: any = {
    idloaitin: "11",
    tenLt:"chủ nhật đi học",
    thutuLt:0,
    idtheloai:"4"
  };
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string) { }

  ngOnInit() {
    this.searchLoaitin(1);
  }

  searchLoaitin(cPage){
    let x = {
      page: cPage,
      size: 5,
      keyword: "",
    };
    this.http.post('https://localhost:44344/api/LoaiTin/search-loaitin', x).subscribe(result => {
      this.loaitins = result;
      console.log(this.loaitins);
    }, error => console.error(error));
  }

  searchNext(){
    console.log(this.loaitins);
    if (this.loaitins.page < this.loaitins.totalPages) {
      let nextpage = this.loaitins.page + 1;
      let x = {
        page: nextpage,
        size: 5,
        keyword:""
      };
      console.log(x);
      this.http.post('https://localhost:44344/api/LoaiTin/search-loaitin', x).subscribe(result => {
        this.loaitins = result;
        //this.tintucs = this.tintucs.data;
      }, error => console.error(error));

    }
    else {
      alert("Bạn đang ở trang cuối!");
    }
  }

  searchPrevious() {
    if (this.loaitins.page > 1) {
      let previouspage = this.loaitins.page - 1;
      let x = {
        page: previouspage,
        size: 5,
        keyWord:""
      };
      this.http.post('https://localhost:44344/api/LoaiTin/search-loaitin', x).subscribe(result => {
        this.loaitins = result;
      }, error => console.error(error));

    }
    else {
      alert ("Bạn đang ở trang đầu");
    }
  }
  isEdit: boolean= true;
  openModal(isNew, index)
   {
    if (isNew)
     {
      this.isEdit=false;
      this.loaitin = {
        idloaitin:"",
        tenLt: "",
        thutuLt: 0,
        idtheloai:""
      };
    }
    else {
      this.isEdit = true;
      this.loaitin = this.loaitins.data[index];
      console.log(this.loaitin);
    }
    $('#exampleModal').modal("show");
  }
  addLoaitin()
  {
    var x = this.loaitin;
    this.http.post('https://localhost:44344/api/LoaiTin/create-loaitin', x).subscribe(result => {
      var res:any = result;
      if(res.success) {
        this.loaitin = true;
        this.searchLoaitin(1);
      }
    }, error => console.error(error));
  }
  updateLoaitin()
  {
    var x = this.loaitin;
    this.http.post('https://localhost:44344/api/LoaiTin/update-loaitin', x).subscribe(result => {
        var res:any = result;
        if(res.success)
        {
          this.loaitin = true;
          this.searchLoaitin(1);
          alert("Cập nhật tin thành công!");
        }
      }, error => console.error(error));
    }

   deleteLoaitin(index)
  {
    var r = confirm("Bạn có chắc chắn xóa?");
    if (r == true)
    {
      this.loaitin = this.loaitins.data[index];
      var x = this.loaitin;
      this.http.post('https://localhost:44344/api/LoaiTin/delete-loai-tin', x).subscribe(result => {
        var res: any = result;
        if(res.success)
        {
          this.searchLoaitin(1);
          alert("Đã xóa thành công!");
        }
        else {
          alert(res.message);
        }
    }, error => {
      console.error(error);
      alert(error);
    });
    }
  }
}

