pragma solidity ^0.4.0;
contract student
{
     struct student
     {
     string name;
     uint256 age;
     uint256 id;
     }
     mapping(uint256 => student)student1;
     mapping(uint256 => student)student2;
    uint256 c;
    uint256 []d;
     function olddata(string _name,uint256 _age,uint256 _id,uint256 key1)public 
     {
         student1[key1].name=_name;
         student1[key1].age=_age;
         student1[key1].id=_id;
         d.push(student1[key1].id);
         
     }
     function newdata(string _name,uint256 _age,uint256 _id,uint256 key2)public 
     {
         student2[key2].name=_name;
         student2[key2].age=_age;
         student2[key2].id=_id;
         
     }
     function output(uint256 key2)public view returns(string)
     {
         for(uint256 i=0;i<d.length;i++)
         {
             if(student1[i].id==student2[key2].id)
             {
                 c++;
                 return "invalid";
             }
             
         }
         if(c==0)
         {
              student1[key2].name=student2[key2].name;
              student1[key2].age=student2[key2].age;
              student1[key2].id=student2[key2].id;
              d.push(student1[key2].id);    
             return "valid";
             
         }
}
function old(uint256 key1)public view returns(string,uint256,uint256,uint256[])
{
return (student1[key1].name,student1[key1].age,student1[key1].id,d);
}
function few(uint256 key2)public view returns(string,uint256,uint256)
{
    return (student2[key2].name,student2[key2].age,student2[key2].id);
}
}
