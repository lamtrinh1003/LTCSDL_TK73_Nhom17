import { Component, OnInit, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
declare var $: any;

@Component({
  selector: 'app-tintuc',
  templateUrl: './tintuc.component.html',
  styleUrls: ['./tintuc.component.css']
})
export class TintucComponent implements OnInit {

  tintucs:any = {
    data: [],
    totalRecords: 0,
    page: 0,
    size: 5,
    totalPages: 0
  };
  tintuc:any={
    idtintuc: "1",
    tieude:"chủ nhật đi học",
    tomtat:"thầy vẫn dạy",
    noidung:"thây cho lich học bù"
  };
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string) { }

  ngOnInit() {
    this.searchTintuc(1);
  }

  searchTintuc(cPage){
    let x = {
      page: cPage,
      size: 5,
      keyword: "",
    };
    this.http.post('https://localhost:44344/api/TinTuc/search-tintuc', x).subscribe(result => {
      this.tintucs = result;
      //this.tintucs = this.tintucs.data;
      console.log(this.tintucs);
    }, error => console.error(error));
  }

  searchNext(){
    console.log(this.tintucs);
    if (this.tintucs.page < this.tintucs.totalPages) {
      let nextpage = this.tintucs.page + 1;
      let x = {
        page: nextpage,
        size: 5,
        keyword:""
      };
      console.log(x);
      this.http.post('https://localhost:44344/api/TinTuc/search-tintuc', x).subscribe(result => {
        this.tintucs = result;
        //this.tintucs = this.tintucs.data;
      }, error => console.error(error));

    }
    else {
      alert("Bạn đang ở trang cuối!");
    }
  }

  searchPrevious() {
    if (this.tintucs.page > 1) {
      let previouspage = this.tintucs.page - 1;
      let x = {
        page: previouspage,
        size: 5,
        keyWord:""
      };
      this.http.post('https://localhost:44344/api/TinTuc/search-tintuc', x).subscribe(result => {
        this.tintucs = result;
        //this.tintucs = this.tintucs.data;
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
      this.tintuc = {
        idtintuc:"",
        tieude: "",
        tomtat: "",
        noidung:""
      };
    }
    else {
      this.isEdit = true;
      this.tintuc = this.tintucs.data[index];
      console.log(this.tintuc);
    }
    $('#exampleModal').modal("show");
  }
  addTintuc()
  {
    var x = this.tintuc;
    this.http.post('https://localhost:44344/api/TinTuc/create-tintuc', x).subscribe(result => {
      var res:any = result;
      if(res.success) {
        this.tintuc = true;
        this.searchTintuc(1);
      }
    }, error => console.error(error));
  }
  updateTintuc()
  {
    var x = this.tintuc;
    this.http.post('https://localhost:44344/api/TinTuc/update-tintuc', x).subscribe(result => {
        var res:any = result;
        if(res.success)
        {
          this.tintuc = true;
          this.searchTintuc(1);
          alert("Cập nhật tin thành công!");
        }
      }, error => console.error(error));
    }

   deleteTintuc(index)
  {
    var r = confirm("Bạn có chắc chắn xóa?");
    if (r == true)
    {
      this.tintuc = this.tintucs.data[index];
      var x = this.tintuc;
      this.http.post('https://localhost:44344/api/TinTuc/delete-tin-tuc', x).subscribe(result => {
        var res: any = result;
        if(res.success)
        {
          this.searchTintuc(1);
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

