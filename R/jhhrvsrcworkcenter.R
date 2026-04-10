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
#' jhhrvsrcworkcenterUI()

jhhrvsrcworkcenterUI <- function(tabTitle ='责任中心',
                    colTitles =c('操作区','显示区域'),
                    widthRates =c(4, 8),
                    func_left = buttonworkcenterUI_left,
                    func_right =buttonworkcenterUI_right
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
buttonworkcenterUI_left <- function() {


  res <- tagList(

    shiny::actionButton(inputId = 'btn_hrv_src_view_workcenter' , label = '预览表单数据'),
    
    
    tsui::mdl_download_button(id = 'dl_workcenter',label = '下载查询记录到EXCEL'),


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
buttonworkcenterUI_right <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'hrv_src_view_data_workcenter', label = '出口'))
  )
  return(res)

}
