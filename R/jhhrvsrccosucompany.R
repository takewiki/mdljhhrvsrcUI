#' 按纽生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' jhhrvsrccosucompanyUI()

jhhrvsrccosucompanyUI <- function(tabTitle ='往来单位',
                    colTitles =c('操作区','显示区域'),
                    widthRates =c(4, 8),
                    func_left = buttoncosucompanyUI_left,
                    func_right =buttoncosucompanyUI_right
) {

  
  res = tsui::uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right)
  return(res)
}


#' 操作区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_left()
buttoncosucompanyUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_hrv_src_cosucompany_Fitem',label ='请输入项目' ,value ='往来单位' ),
    tsui::mdl_text2(id = 'text_hrv_src_rditem_FNumber',label ='请输入编码' ,value ='' ),
    tsui::mdl_text2(id = 'text_hrv_src_cosucompany_FName',label ='请输入名称' ,value ='' ),
    

    shiny::actionButton(inputId = 'btn_hrv_src_view_cosucompany' , label = '预览表单数据'),
    
    shiny::actionButton(inputId = 'btn_hrv_src_add_cosucompany' , label = '新增表单数据'),
    
    tsui::mdl_text2(id = 'text_hrv_src_rditem_FNumber_delete',label ='请输入需要删除的编码' ,value ='' ),
    
    shiny::actionButton(inputId = 'btn_hrv_src_delete_cosucompany' , label = '删除表单数据')


  )
  return(res)

}





#' 预览区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_right()
buttoncosucompanyUI_right <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'hrv_src_view_data_cosucompany', label = '出口'))
  )
  return(res)

}
