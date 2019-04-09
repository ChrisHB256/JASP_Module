import QtQuick 2.8
import JASP.Controls 1.0
import JASP.Widgets 1.0
import JASP.Theme 1.0
Form {
    usesJaspResults: true

    VariablesForm{
        AvailableVariablesList { name: "allVariables" }
        AssignedVariablesList { name: "variables";	title: qsTr("Variables!") }
        AssignedVariablesList { name: "splitby";	title: qsTr("Split"); singleVariable: true; allowedColumns: ["ordinal", "nominal"] }
    }

    ExpanderButton
    {
        title: qsTr("Plots")

        Group
        {
            CheckBox{name:"histogram"; label: qsTr("Histogram")}
            CheckBox{name:"scatter"; label: qsTr("Scatter Plot")}
            CheckBox{name:"mean"; label: qsTr("Mean Plot")}
            CheckBox{name:"chisquare"; label: qsTr("CHI Square")}
            CheckBox{name:"interaction"; label: qsTr("Interaction")}
            CheckBox{name:"anova"; label: qsTr("Anova")}
            CheckBox{name:"2n"; label: qsTr("2 Numeric Variable")}
            CheckBox{name:"3n"; label: qsTr("3 Numeric Variable")}
        }
    }

}
