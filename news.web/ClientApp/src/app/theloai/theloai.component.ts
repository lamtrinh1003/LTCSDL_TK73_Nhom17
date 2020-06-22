import { Component, OnInit, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
declare var $: any;

@Component({
  selector: 'app-theloai',
  templateUrl: './theloai.component.html',
  styleUrls: ['./theloai.component.css']
})
export class TheloaiComponent implements OnInit {

  theloais:any = {
    data: [],
    totalRecords: 0,
    page: 0,
    size: 5,
    totalPages: 0
  };
  theloai: any = {
    Idtheloai: "11",
    TenTl:"chủ nhật đi học",
    ThutuTl:0,
  };
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string) { }

  ngOnInit() {
    this.searchTheloai(1);
  }

  searchTheloai(cPage){
    let x = {
      page: cPage,
      size: 5,
      keyword: "",
    };
    this.http.post('https://localhost:44344/api/TheLoai/search-theloai', x).subscribe(result => {
      this.theloais = result;
      console.log(this.theloais);
    }, error => console.error(error));
  }

  searchNext(){
    console.log(this.theloais);
    if (this.theloais.page < this.theloais.totalPages) {
      let nextpage = this.theloais.page + 1;
      let x = {
        page: nextpage,
        size: 5,
        keyword:""
      };
      console.log(x);
      this.http.post('https://localhost:44344/api/TheLoai/search-theloai', x).subscribe(result => {
        this.theloais = result;
      }, error => console.error(error));

    }
    else {
      alert("Bạn đang ở trang cuối!");
    }
  }

  searchPrevious() {
    if (this.theloais.page > 1) {
      let previouspage = this.theloais.page - 1;
      let x = {
        page: previouspage,
        size: 5,
        keyWord:""
      };
      this.http.post('https://localhost:44344/api/TheLoai/search-theloai', x).subscribe(result => {
        this.theloais = result;
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
      this.theloai = {
        Idtheloai:"",
        TenTl: "",
        ThutuTl: 0,
      };
    }
    else {
      this.isEdit = true;
      this.theloai = this.theloais.data[index];
      console.log(this.theloai);
    }
    $('#exampleModal').modal("show");
  }
  addTheloai()
  {
    var x = this.theloai;
    this.http.post('https://localhost:44344/api/TheLoai/create-theloai', x).subscribe(result => {
      var res:any = result;
      if(res.success) {
        this.theloai = true;
        this.searchTheloai(1);
      }
    }, error => console.error(error));
  }
  updateTheloai()
  {
    var x = this.theloai;
    this.http.post('https://localhost:44344/api/TheLoai/update-theloai', x).subscribe(result => {
        var res:any = result;
        if(res.success)
        {
          this.theloai = true;
          this.searchTheloai(1);
          alert("Cập nhật tin thành công!");
        }
      }, error => console.error(error));
    }

   deleteTheloai(index)
  {
    var r = confirm("Bạn có chắc chắn xóa?");
    if (r == true)
    {
      this.theloai = this.theloais.data[index];
      var x = this.theloai;
      this.http.post('https://localhost:44344/api/TheLoai/delete-the-loai', x).subscribe(result => {
        var res: any = result;
        if(res.success)
        {
          this.searchTheloai(1);
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

