<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_45" />
        <signal name="XLXN_46(31:0)" />
        <signal name="XLXN_49(31:0)" />
        <signal name="XLXN_50(31:0)" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57(2:0)" />
        <signal name="XLXN_58(7:0)" />
        <signal name="XLXN_61(31:0)" />
        <signal name="XLXN_62(31:0)" />
        <signal name="XLXN_64(4:0)" />
        <signal name="XLXN_66(4:0)" />
        <signal name="XLXN_68(31:0)" />
        <signal name="XLXN_69(31:0)" />
        <signal name="XLXN_70(31:0)" />
        <signal name="XLXN_71(31:0)" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75(2:0)" />
        <signal name="XLXN_76(7:0)" />
        <signal name="XLXN_77(31:0)" />
        <signal name="XLXN_78(31:0)" />
        <signal name="XLXN_79(4:0)" />
        <signal name="XLXN_80(31:0)" />
        <signal name="XLXN_81(31:0)" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84(4:0)" />
        <signal name="XLXN_85(31:0)" />
        <signal name="XLXN_86(31:0)" />
        <signal name="XLXN_87(31:0)" />
        <signal name="XLXN_88(5:0)" />
        <signal name="XLXN_89(31:0)" />
        <signal name="XLXN_90(31:0)" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93(4:0)" />
        <signal name="XLXN_94(31:0)" />
        <signal name="XLXN_95(31:0)" />
        <signal name="XLXN_96(31:0)" />
        <signal name="XLXN_97(5:0)" />
        <signal name="XLXN_98(31:0)" />
        <signal name="XLXN_99(31:0)" />
        <signal name="XLXN_100(31:0)" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_106(4:0)" />
        <signal name="XLXN_107(31:0)" />
        <signal name="XLXN_108(31:0)" />
        <signal name="XLXN_109(31:0)" />
        <signal name="XLXN_110(31:0)" />
        <signal name="XLXN_111(31:0)" />
        <signal name="XLXN_113" />
        <signal name="XLXN_115(4:0)" />
        <signal name="XLXN_116(31:0)" />
        <signal name="XLXN_117(31:0)" />
        <signal name="XLXN_118(31:0)" />
        <signal name="XLXN_119(31:0)" />
        <signal name="XLXN_120(31:0)" />
        <signal name="XLXN_121" />
        <signal name="XLXN_123" />
        <signal name="clk_init" />
        <signal name="rst_init" />
        <signal name="XLXN_141" />
        <signal name="XLXN_142" />
        <signal name="XLXN_144(31:0)" />
        <signal name="XLXN_145(4:0)" />
        <signal name="XLXN_150(31:0)" />
        <signal name="XLXN_151(31:0)" />
        <port polarity="Input" name="clk_init" />
        <port polarity="Input" name="rst_init" />
        <blockdef name="PC">
            <timestamp>2016-7-13T7:34:25</timestamp>
            <rect width="416" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="544" y1="-224" y2="-224" x1="480" />
            <rect width="64" x="480" y="-44" height="24" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
        </blockdef>
        <blockdef name="Inst_ROM">
            <timestamp>2016-7-13T8:7:4</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="IF_ID">
            <timestamp>2016-7-13T7:34:4</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ID">
            <timestamp>2016-7-13T7:31:27</timestamp>
            <rect width="528" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-912" y2="-912" x1="64" />
            <line x2="0" y1="-832" y2="-832" x1="64" />
            <line x2="0" y1="-752" y2="-752" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-604" height="24" />
            <line x2="0" y1="-592" y2="-592" x1="64" />
            <rect width="64" x="0" y="-524" height="24" />
            <line x2="0" y1="-512" y2="-512" x1="64" />
            <rect width="64" x="0" y="-444" height="24" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-124" height="24" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="656" y1="-992" y2="-992" x1="592" />
            <line x2="656" y1="-928" y2="-928" x1="592" />
            <line x2="656" y1="-864" y2="-864" x1="592" />
            <line x2="656" y1="-800" y2="-800" x1="592" />
            <line x2="656" y1="-736" y2="-736" x1="592" />
            <line x2="656" y1="-672" y2="-672" x1="592" />
            <rect width="64" x="592" y="-620" height="24" />
            <line x2="656" y1="-608" y2="-608" x1="592" />
            <rect width="64" x="592" y="-556" height="24" />
            <line x2="656" y1="-544" y2="-544" x1="592" />
            <rect width="64" x="592" y="-492" height="24" />
            <line x2="656" y1="-480" y2="-480" x1="592" />
            <rect width="64" x="592" y="-428" height="24" />
            <line x2="656" y1="-416" y2="-416" x1="592" />
            <rect width="64" x="592" y="-364" height="24" />
            <line x2="656" y1="-352" y2="-352" x1="592" />
            <rect width="64" x="592" y="-300" height="24" />
            <line x2="656" y1="-288" y2="-288" x1="592" />
            <rect width="64" x="592" y="-236" height="24" />
            <line x2="656" y1="-224" y2="-224" x1="592" />
            <rect width="64" x="592" y="-172" height="24" />
            <line x2="656" y1="-160" y2="-160" x1="592" />
            <rect width="64" x="592" y="-108" height="24" />
            <line x2="656" y1="-96" y2="-96" x1="592" />
            <rect width="64" x="592" y="-44" height="24" />
            <line x2="656" y1="-32" y2="-32" x1="592" />
        </blockdef>
        <blockdef name="ID_EX">
            <timestamp>2016-7-13T7:34:0</timestamp>
            <rect width="480" x="64" y="-768" height="768" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="608" y1="-736" y2="-736" x1="544" />
            <line x2="608" y1="-672" y2="-672" x1="544" />
            <line x2="608" y1="-608" y2="-608" x1="544" />
            <rect width="64" x="544" y="-556" height="24" />
            <line x2="608" y1="-544" y2="-544" x1="544" />
            <rect width="64" x="544" y="-492" height="24" />
            <line x2="608" y1="-480" y2="-480" x1="544" />
            <rect width="64" x="544" y="-428" height="24" />
            <line x2="608" y1="-416" y2="-416" x1="544" />
            <rect width="64" x="544" y="-364" height="24" />
            <line x2="608" y1="-352" y2="-352" x1="544" />
            <rect width="64" x="544" y="-300" height="24" />
            <line x2="608" y1="-288" y2="-288" x1="544" />
            <rect width="64" x="544" y="-236" height="24" />
            <line x2="608" y1="-224" y2="-224" x1="544" />
            <rect width="64" x="544" y="-172" height="24" />
            <line x2="608" y1="-160" y2="-160" x1="544" />
        </blockdef>
        <blockdef name="EX">
            <timestamp>2016-7-13T12:12:24</timestamp>
            <rect width="416" x="64" y="-1088" height="1088" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="544" y1="-1056" y2="-1056" x1="480" />
            <line x2="544" y1="-944" y2="-944" x1="480" />
            <rect width="64" x="480" y="-844" height="24" />
            <line x2="544" y1="-832" y2="-832" x1="480" />
            <rect width="64" x="480" y="-732" height="24" />
            <line x2="544" y1="-720" y2="-720" x1="480" />
            <rect width="64" x="480" y="-620" height="24" />
            <line x2="544" y1="-608" y2="-608" x1="480" />
            <rect width="64" x="480" y="-508" height="24" />
            <line x2="544" y1="-496" y2="-496" x1="480" />
            <rect width="64" x="480" y="-396" height="24" />
            <line x2="544" y1="-384" y2="-384" x1="480" />
            <rect width="64" x="480" y="-284" height="24" />
            <line x2="544" y1="-272" y2="-272" x1="480" />
            <rect width="64" x="480" y="-172" height="24" />
            <line x2="544" y1="-160" y2="-160" x1="480" />
            <rect width="64" x="480" y="-60" height="24" />
            <line x2="544" y1="-48" y2="-48" x1="480" />
        </blockdef>
        <blockdef name="EX_MEM">
            <timestamp>2016-7-13T7:33:49</timestamp>
            <rect width="448" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="576" y1="-672" y2="-672" x1="512" />
            <line x2="576" y1="-592" y2="-592" x1="512" />
            <rect width="64" x="512" y="-524" height="24" />
            <line x2="576" y1="-512" y2="-512" x1="512" />
            <rect width="64" x="512" y="-444" height="24" />
            <line x2="576" y1="-432" y2="-432" x1="512" />
            <rect width="64" x="512" y="-364" height="24" />
            <line x2="576" y1="-352" y2="-352" x1="512" />
            <rect width="64" x="512" y="-284" height="24" />
            <line x2="576" y1="-272" y2="-272" x1="512" />
            <rect width="64" x="512" y="-204" height="24" />
            <line x2="576" y1="-192" y2="-192" x1="512" />
            <rect width="64" x="512" y="-124" height="24" />
            <line x2="576" y1="-112" y2="-112" x1="512" />
            <rect width="64" x="512" y="-44" height="24" />
            <line x2="576" y1="-32" y2="-32" x1="512" />
        </blockdef>
        <blockdef name="MEM">
            <timestamp>2016-7-13T7:34:15</timestamp>
            <rect width="400" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="528" y1="-672" y2="-672" x1="464" />
            <line x2="528" y1="-608" y2="-608" x1="464" />
            <line x2="528" y1="-544" y2="-544" x1="464" />
            <line x2="528" y1="-480" y2="-480" x1="464" />
            <line x2="528" y1="-416" y2="-416" x1="464" />
            <rect width="64" x="464" y="-364" height="24" />
            <line x2="528" y1="-352" y2="-352" x1="464" />
            <rect width="64" x="464" y="-300" height="24" />
            <line x2="528" y1="-288" y2="-288" x1="464" />
            <rect width="64" x="464" y="-236" height="24" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <rect width="64" x="464" y="-172" height="24" />
            <line x2="528" y1="-160" y2="-160" x1="464" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <blockdef name="MEM_WB">
            <timestamp>2016-7-13T7:34:19</timestamp>
            <rect width="368" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-480" y2="-480" x1="432" />
            <line x2="496" y1="-400" y2="-400" x1="432" />
            <rect width="64" x="432" y="-332" height="24" />
            <line x2="496" y1="-320" y2="-320" x1="432" />
            <rect width="64" x="432" y="-252" height="24" />
            <line x2="496" y1="-240" y2="-240" x1="432" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="64" x="432" y="-92" height="24" />
            <line x2="496" y1="-80" y2="-80" x1="432" />
        </blockdef>
        <blockdef name="REG">
            <timestamp>2016-7-13T7:34:29</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="HILO">
            <timestamp>2016-7-13T7:33:54</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DATA_RAM">
            <timestamp>2016-7-13T7:41:39</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <block symbolname="PC" name="XLXI_12">
            <blockpin signalname="clk_init" name="clk" />
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_55" name="branch_flag_i" />
            <blockpin signalname="XLXN_144(31:0)" name="branch_target_address_i(31:0)" />
            <blockpin signalname="XLXN_45" name="ce" />
            <blockpin signalname="XLXN_46(31:0)" name="pc(31:0)" />
        </block>
        <block symbolname="Inst_ROM" name="XLXI_13">
            <blockpin signalname="XLXN_45" name="ce" />
            <blockpin signalname="XLXN_46(31:0)" name="addr(31:0)" />
            <blockpin signalname="XLXN_150(31:0)" name="inst(31:0)" />
            <blockpin signalname="XLXN_151(31:0)" name="pc_o(31:0)" />
        </block>
        <block symbolname="IF_ID" name="XLXI_14">
            <blockpin signalname="clk_init" name="clk" />
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_151(31:0)" name="if_pc(31:0)" />
            <blockpin signalname="XLXN_150(31:0)" name="if_inst(31:0)" />
            <blockpin signalname="XLXN_49(31:0)" name="id_pc(31:0)" />
            <blockpin signalname="XLXN_50(31:0)" name="id_inst(31:0)" />
        </block>
        <block symbolname="ID" name="XLXI_15">
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_121" name="ex_wreg_i" />
            <blockpin signalname="XLXN_123" name="mem_wreg_i" />
            <blockpin signalname="XLXN_74" name="is_in_delayslot_i" />
            <blockpin signalname="XLXN_49(31:0)" name="pc_i(31:0)" />
            <blockpin signalname="XLXN_50(31:0)" name="inst_i(31:0)" />
            <blockpin signalname="XLXN_70(31:0)" name="reg1_data_i(31:0)" />
            <blockpin signalname="XLXN_71(31:0)" name="reg2_data_i(31:0)" />
            <blockpin signalname="XLXN_85(31:0)" name="ex_wdata_i(31:0)" />
            <blockpin signalname="XLXN_84(4:0)" name="ex_wd_i(4:0)" />
            <blockpin signalname="XLXN_107(31:0)" name="mem_wdata_i(31:0)" />
            <blockpin signalname="XLXN_106(4:0)" name="mem_wd_i(4:0)" />
            <blockpin signalname="XLXN_51" name="reg1_read_o" />
            <blockpin signalname="XLXN_52" name="reg2_read_o" />
            <blockpin signalname="XLXN_53" name="wreg_o" />
            <blockpin signalname="XLXN_54" name="is_in_delayslot_o" />
            <blockpin signalname="XLXN_55" name="branch_flag_o" />
            <blockpin signalname="XLXN_56" name="next_inst_in_delayslot_o" />
            <blockpin signalname="XLXN_57(2:0)" name="alusel_o(2:0)" />
            <blockpin signalname="XLXN_58(7:0)" name="aluop_o(7:0)" />
            <blockpin signalname="XLXN_61(31:0)" name="reg1_o(31:0)" />
            <blockpin signalname="XLXN_62(31:0)" name="reg2_o(31:0)" />
            <blockpin signalname="XLXN_64(4:0)" name="reg1_addr_o(4:0)" />
            <blockpin signalname="XLXN_145(4:0)" name="reg2_addr_o(4:0)" />
            <blockpin signalname="XLXN_66(4:0)" name="wd_o(4:0)" />
            <blockpin signalname="XLXN_144(31:0)" name="branch_target_address_o(31:0)" />
            <blockpin signalname="XLXN_68(31:0)" name="link_addr_o(31:0)" />
            <blockpin signalname="XLXN_69(31:0)" name="inst_o(31:0)" />
        </block>
        <block symbolname="ID_EX" name="XLXI_16">
            <blockpin signalname="clk_init" name="clk" />
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_53" name="id_wreg" />
            <blockpin signalname="XLXN_54" name="id_is_in_delayslot" />
            <blockpin signalname="XLXN_56" name="next_inst_in_delayslot_i" />
            <blockpin signalname="XLXN_57(2:0)" name="id_alusel(2:0)" />
            <blockpin signalname="XLXN_58(7:0)" name="id_aluop(7:0)" />
            <blockpin signalname="XLXN_61(31:0)" name="id_reg1(31:0)" />
            <blockpin signalname="XLXN_62(31:0)" name="id_reg2(31:0)" />
            <blockpin signalname="XLXN_66(4:0)" name="id_wd(4:0)" />
            <blockpin signalname="XLXN_68(31:0)" name="id_link_address(31:0)" />
            <blockpin signalname="XLXN_69(31:0)" name="id_inst(31:0)" />
            <blockpin signalname="XLXN_72" name="ex_wreg" />
            <blockpin signalname="XLXN_73" name="ex_is_in_delayslot" />
            <blockpin signalname="XLXN_74" name="is_in_delayslot_o" />
            <blockpin signalname="XLXN_75(2:0)" name="ex_alusel(2:0)" />
            <blockpin signalname="XLXN_76(7:0)" name="ex_aluop(7:0)" />
            <blockpin signalname="XLXN_77(31:0)" name="ex_reg1(31:0)" />
            <blockpin signalname="XLXN_78(31:0)" name="ex_reg2(31:0)" />
            <blockpin signalname="XLXN_79(4:0)" name="ex_wd(4:0)" />
            <blockpin signalname="XLXN_80(31:0)" name="ex_link_address(31:0)" />
            <blockpin signalname="XLXN_81(31:0)" name="ex_inst(31:0)" />
        </block>
        <block symbolname="EX" name="XLXI_17">
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_72" name="wreg_i" />
            <blockpin signalname="XLXN_141" name="mem_whilo_i" />
            <blockpin signalname="XLXN_142" name="wb_whilo_i" />
            <blockpin signalname="XLXN_73" name="is_in_delayslot_i" />
            <blockpin signalname="XLXN_75(2:0)" name="alusel_i(2:0)" />
            <blockpin signalname="XLXN_76(7:0)" name="aluop_i(7:0)" />
            <blockpin signalname="XLXN_77(31:0)" name="reg1_i(31:0)" />
            <blockpin signalname="XLXN_78(31:0)" name="reg2_i(31:0)" />
            <blockpin signalname="XLXN_79(4:0)" name="wd_i(4:0)" />
            <blockpin signalname="XLXN_120(31:0)" name="hi_i(31:0)" />
            <blockpin signalname="XLXN_108(31:0)" name="mem_hi_i(31:0)" />
            <blockpin signalname="XLXN_109(31:0)" name="mem_lo_i(31:0)" />
            <blockpin signalname="XLXN_117(31:0)" name="wb_hi_i(31:0)" />
            <blockpin signalname="XLXN_118(31:0)" name="wb_lo_i(31:0)" />
            <blockpin signalname="XLXN_80(31:0)" name="link_address_i(31:0)" />
            <blockpin signalname="XLXN_81(31:0)" name="inst_i(31:0)" />
            <blockpin signalname="XLXN_119(31:0)" name="lo_i(31:0)" />
            <blockpin signalname="XLXN_121" name="wreg_o" />
            <blockpin signalname="XLXN_83" name="whilo_o" />
            <blockpin signalname="XLXN_84(4:0)" name="wd_o(4:0)" />
            <blockpin signalname="XLXN_85(31:0)" name="wdata_o(31:0)" />
            <blockpin signalname="XLXN_86(31:0)" name="hi_o(31:0)" />
            <blockpin signalname="XLXN_87(31:0)" name="lo_o(31:0)" />
            <blockpin signalname="XLXN_88(5:0)" name="aluop_o(5:0)" />
            <blockpin signalname="XLXN_89(31:0)" name="mem_addr_o(31:0)" />
            <blockpin signalname="XLXN_90(31:0)" name="reg2_o(31:0)" />
        </block>
        <block symbolname="EX_MEM" name="XLXI_18">
            <blockpin signalname="clk_init" name="clk" />
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_121" name="ex_wreg" />
            <blockpin signalname="XLXN_83" name="ex_whilo" />
            <blockpin signalname="XLXN_84(4:0)" name="ex_wd(4:0)" />
            <blockpin signalname="XLXN_85(31:0)" name="ex_wdata(31:0)" />
            <blockpin signalname="XLXN_86(31:0)" name="ex_hi(31:0)" />
            <blockpin signalname="XLXN_87(31:0)" name="ex_lo(31:0)" />
            <blockpin signalname="XLXN_88(5:0)" name="ex_aluop(5:0)" />
            <blockpin signalname="XLXN_89(31:0)" name="ex_mem_addr(31:0)" />
            <blockpin signalname="XLXN_90(31:0)" name="ex_reg2(31:0)" />
            <blockpin signalname="XLXN_91" name="mem_wreg" />
            <blockpin signalname="XLXN_92" name="mem_whilo" />
            <blockpin signalname="XLXN_93(4:0)" name="mem_wd(4:0)" />
            <blockpin signalname="XLXN_94(31:0)" name="mem_wdata(31:0)" />
            <blockpin signalname="XLXN_95(31:0)" name="mem_hi(31:0)" />
            <blockpin signalname="XLXN_96(31:0)" name="mem_lo(31:0)" />
            <blockpin signalname="XLXN_97(5:0)" name="mem_aluop(5:0)" />
            <blockpin signalname="XLXN_98(31:0)" name="mem_mem_addr(31:0)" />
            <blockpin signalname="XLXN_99(31:0)" name="mem_reg2(31:0)" />
        </block>
        <block symbolname="MEM" name="XLXI_19">
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_91" name="wreg_i" />
            <blockpin signalname="XLXN_92" name="whilo_i" />
            <blockpin signalname="XLXN_93(4:0)" name="wd_i(4:0)" />
            <blockpin signalname="XLXN_94(31:0)" name="wdata_i(31:0)" />
            <blockpin signalname="XLXN_95(31:0)" name="hi_i(31:0)" />
            <blockpin signalname="XLXN_96(31:0)" name="lo_i(31:0)" />
            <blockpin signalname="XLXN_97(5:0)" name="aluop_i(5:0)" />
            <blockpin signalname="XLXN_98(31:0)" name="mem_addr_i(31:0)" />
            <blockpin signalname="XLXN_99(31:0)" name="reg2_i(31:0)" />
            <blockpin signalname="XLXN_100(31:0)" name="mem_data_i(31:0)" />
            <blockpin signalname="XLXN_123" name="wreg_o" />
            <blockpin signalname="XLXN_141" name="whilo_o" />
            <blockpin signalname="XLXN_103" name="mem_ce_o" />
            <blockpin signalname="XLXN_104" name="mem_sel_o" />
            <blockpin signalname="XLXN_105" name="mem_we_o" />
            <blockpin signalname="XLXN_106(4:0)" name="wd_o(4:0)" />
            <blockpin signalname="XLXN_107(31:0)" name="wdata_o(31:0)" />
            <blockpin signalname="XLXN_108(31:0)" name="hi_o(31:0)" />
            <blockpin signalname="XLXN_109(31:0)" name="lo_o(31:0)" />
            <blockpin signalname="XLXN_110(31:0)" name="mem_data_o(31:0)" />
            <blockpin signalname="XLXN_111(31:0)" name="mem_addr_o(31:0)" />
        </block>
        <block symbolname="MEM_WB" name="XLXI_20">
            <blockpin signalname="clk_init" name="clk" />
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_123" name="mem_wreg" />
            <blockpin signalname="XLXN_141" name="mem_whilo" />
            <blockpin signalname="XLXN_106(4:0)" name="mem_wd(4:0)" />
            <blockpin signalname="XLXN_107(31:0)" name="mem_wdata(31:0)" />
            <blockpin signalname="XLXN_108(31:0)" name="mem_hi(31:0)" />
            <blockpin signalname="XLXN_109(31:0)" name="mem_lo(31:0)" />
            <blockpin signalname="XLXN_113" name="wb_wreg" />
            <blockpin signalname="XLXN_142" name="wb_whilo" />
            <blockpin signalname="XLXN_115(4:0)" name="wb_wd(4:0)" />
            <blockpin signalname="XLXN_116(31:0)" name="wb_wdata(31:0)" />
            <blockpin signalname="XLXN_117(31:0)" name="wb_hi(31:0)" />
            <blockpin signalname="XLXN_118(31:0)" name="wb_lo(31:0)" />
        </block>
        <block symbolname="HILO" name="XLXI_21">
            <blockpin signalname="clk_init" name="clk" />
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_142" name="we" />
            <blockpin signalname="XLXN_117(31:0)" name="hi_i(31:0)" />
            <blockpin signalname="XLXN_118(31:0)" name="lo_i(31:0)" />
            <blockpin signalname="XLXN_120(31:0)" name="hi_o(31:0)" />
            <blockpin signalname="XLXN_119(31:0)" name="lo_o(31:0)" />
        </block>
        <block symbolname="DATA_RAM" name="XLXI_22">
            <blockpin signalname="clk_init" name="clk" />
            <blockpin signalname="XLXN_103" name="ce" />
            <blockpin signalname="XLXN_105" name="we" />
            <blockpin signalname="XLXN_104" name="sel" />
            <blockpin signalname="XLXN_111(31:0)" name="addr(31:0)" />
            <blockpin signalname="XLXN_110(31:0)" name="data_i(31:0)" />
            <blockpin signalname="XLXN_100(31:0)" name="data_o(31:0)" />
        </block>
        <block symbolname="REG" name="XLXI_23">
            <blockpin signalname="clk_init" name="clk" />
            <blockpin signalname="rst_init" name="rst" />
            <blockpin signalname="XLXN_113" name="we" />
            <blockpin signalname="XLXN_51" name="re1" />
            <blockpin signalname="XLXN_52" name="re2" />
            <blockpin signalname="XLXN_115(4:0)" name="waddr(4:0)" />
            <blockpin signalname="XLXN_116(31:0)" name="wdata(31:0)" />
            <blockpin signalname="XLXN_64(4:0)" name="raddr1(4:0)" />
            <blockpin signalname="XLXN_145(4:0)" name="raddr2(4:0)" />
            <blockpin signalname="XLXN_70(31:0)" name="rdata1(31:0)" />
            <blockpin signalname="XLXN_71(31:0)" name="rdata2(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="736" y="1952" name="XLXI_13" orien="R0">
        </instance>
        <instance x="1136" y="1616" name="XLXI_14" orien="R0">
        </instance>
        <instance x="2784" y="2000" name="XLXI_16" orien="R0">
        </instance>
        <instance x="3600" y="2176" name="XLXI_17" orien="R0">
        </instance>
        <instance x="4320" y="1952" name="XLXI_18" orien="R0">
        </instance>
        <instance x="5088" y="1984" name="XLXI_19" orien="R0">
        </instance>
        <instance x="5744" y="1824" name="XLXI_20" orien="R0">
        </instance>
        <instance x="6432" y="1712" name="XLXI_21" orien="R0">
        </instance>
        <instance x="5568" y="2960" name="XLXI_22" orien="R0">
        </instance>
        <instance x="2016" y="2960" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_46(31:0)">
            <wire x2="768" y1="1296" y2="1296" x1="144" />
            <wire x2="768" y1="1296" y2="1600" x1="768" />
            <wire x2="144" y1="1296" y2="1920" x1="144" />
            <wire x2="736" y1="1920" y2="1920" x1="144" />
            <wire x2="768" y1="1600" y2="1600" x1="720" />
        </branch>
        <instance x="1776" y="2160" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_49(31:0)">
            <wire x2="1648" y1="1392" y2="1392" x1="1520" />
            <wire x2="1648" y1="1392" y2="1488" x1="1648" />
            <wire x2="1776" y1="1488" y2="1488" x1="1648" />
        </branch>
        <branch name="XLXN_50(31:0)">
            <wire x2="1648" y1="1584" y2="1584" x1="1520" />
            <wire x2="1648" y1="1568" y2="1584" x1="1648" />
            <wire x2="1776" y1="1568" y2="1568" x1="1648" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1952" y1="2320" y2="2608" x1="1952" />
            <wire x2="2016" y1="2608" y2="2608" x1="1952" />
            <wire x2="2512" y1="2320" y2="2320" x1="1952" />
            <wire x2="2512" y1="1168" y2="1168" x1="2432" />
            <wire x2="2512" y1="1168" y2="2320" x1="2512" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="2016" y1="2672" y2="2672" x1="1952" />
            <wire x2="1952" y1="2672" y2="3040" x1="1952" />
            <wire x2="2496" y1="3040" y2="3040" x1="1952" />
            <wire x2="2496" y1="1232" y2="1232" x1="2432" />
            <wire x2="2496" y1="1232" y2="3040" x1="2496" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="2608" y1="1296" y2="1296" x1="2432" />
            <wire x2="2608" y1="1296" y2="1392" x1="2608" />
            <wire x2="2784" y1="1392" y2="1392" x1="2608" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="2592" y1="1360" y2="1360" x1="2432" />
            <wire x2="2592" y1="1360" y2="1456" x1="2592" />
            <wire x2="2784" y1="1456" y2="1456" x1="2592" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="2608" y1="1488" y2="1488" x1="2432" />
            <wire x2="2608" y1="1488" y2="1520" x1="2608" />
            <wire x2="2784" y1="1520" y2="1520" x1="2608" />
        </branch>
        <branch name="XLXN_57(2:0)">
            <wire x2="2608" y1="1552" y2="1552" x1="2432" />
            <wire x2="2608" y1="1552" y2="1584" x1="2608" />
            <wire x2="2784" y1="1584" y2="1584" x1="2608" />
        </branch>
        <branch name="XLXN_58(7:0)">
            <wire x2="2608" y1="1616" y2="1616" x1="2432" />
            <wire x2="2608" y1="1616" y2="1648" x1="2608" />
            <wire x2="2784" y1="1648" y2="1648" x1="2608" />
        </branch>
        <branch name="XLXN_61(31:0)">
            <wire x2="2608" y1="1680" y2="1680" x1="2432" />
            <wire x2="2608" y1="1680" y2="1712" x1="2608" />
            <wire x2="2784" y1="1712" y2="1712" x1="2608" />
        </branch>
        <branch name="XLXN_62(31:0)">
            <wire x2="2608" y1="1744" y2="1744" x1="2432" />
            <wire x2="2608" y1="1744" y2="1776" x1="2608" />
            <wire x2="2784" y1="1776" y2="1776" x1="2608" />
        </branch>
        <branch name="XLXN_64(4:0)">
            <wire x2="2016" y1="2864" y2="2864" x1="1968" />
            <wire x2="1968" y1="2864" y2="3024" x1="1968" />
            <wire x2="2464" y1="3024" y2="3024" x1="1968" />
            <wire x2="2464" y1="1808" y2="1808" x1="2432" />
            <wire x2="2464" y1="1808" y2="3024" x1="2464" />
        </branch>
        <branch name="XLXN_66(4:0)">
            <wire x2="2608" y1="1936" y2="1936" x1="2432" />
            <wire x2="2608" y1="1840" y2="1936" x1="2608" />
            <wire x2="2784" y1="1840" y2="1840" x1="2608" />
        </branch>
        <branch name="XLXN_68(31:0)">
            <wire x2="2624" y1="2064" y2="2064" x1="2432" />
            <wire x2="2624" y1="1904" y2="2064" x1="2624" />
            <wire x2="2784" y1="1904" y2="1904" x1="2624" />
        </branch>
        <branch name="XLXN_69(31:0)">
            <wire x2="2640" y1="2128" y2="2128" x1="2432" />
            <wire x2="2640" y1="1968" y2="2128" x1="2640" />
            <wire x2="2784" y1="1968" y2="1968" x1="2640" />
        </branch>
        <branch name="XLXN_70(31:0)">
            <wire x2="1776" y1="1648" y2="1648" x1="1712" />
            <wire x2="1712" y1="1648" y2="2240" x1="1712" />
            <wire x2="2432" y1="2240" y2="2240" x1="1712" />
            <wire x2="2432" y1="2240" y2="2416" x1="2432" />
            <wire x2="2432" y1="2416" y2="2416" x1="2400" />
        </branch>
        <branch name="XLXN_71(31:0)">
            <wire x2="1776" y1="1728" y2="1728" x1="1696" />
            <wire x2="1696" y1="1728" y2="2208" x1="1696" />
            <wire x2="2416" y1="2208" y2="2208" x1="1696" />
            <wire x2="2416" y1="2208" y2="2928" x1="2416" />
            <wire x2="2416" y1="2928" y2="2928" x1="2400" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="3488" y1="1264" y2="1264" x1="3392" />
            <wire x2="3488" y1="1184" y2="1264" x1="3488" />
            <wire x2="3600" y1="1184" y2="1184" x1="3488" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="3488" y1="1328" y2="1328" x1="3392" />
            <wire x2="3488" y1="1328" y2="1376" x1="3488" />
            <wire x2="3600" y1="1376" y2="1376" x1="3488" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="1776" y1="1408" y2="1408" x1="1760" />
            <wire x2="1760" y1="1408" y2="2176" x1="1760" />
            <wire x2="3440" y1="2176" y2="2176" x1="1760" />
            <wire x2="3440" y1="1392" y2="1392" x1="3392" />
            <wire x2="3440" y1="1392" y2="2176" x1="3440" />
        </branch>
        <branch name="XLXN_75(2:0)">
            <wire x2="3488" y1="1456" y2="1456" x1="3392" />
            <wire x2="3488" y1="1440" y2="1456" x1="3488" />
            <wire x2="3600" y1="1440" y2="1440" x1="3488" />
        </branch>
        <branch name="XLXN_76(7:0)">
            <wire x2="3488" y1="1520" y2="1520" x1="3392" />
            <wire x2="3488" y1="1504" y2="1520" x1="3488" />
            <wire x2="3600" y1="1504" y2="1504" x1="3488" />
        </branch>
        <branch name="XLXN_77(31:0)">
            <wire x2="3488" y1="1584" y2="1584" x1="3392" />
            <wire x2="3488" y1="1568" y2="1584" x1="3488" />
            <wire x2="3600" y1="1568" y2="1568" x1="3488" />
        </branch>
        <branch name="XLXN_78(31:0)">
            <wire x2="3488" y1="1648" y2="1648" x1="3392" />
            <wire x2="3488" y1="1632" y2="1648" x1="3488" />
            <wire x2="3600" y1="1632" y2="1632" x1="3488" />
        </branch>
        <branch name="XLXN_79(4:0)">
            <wire x2="3488" y1="1712" y2="1712" x1="3392" />
            <wire x2="3488" y1="1696" y2="1712" x1="3488" />
            <wire x2="3600" y1="1696" y2="1696" x1="3488" />
        </branch>
        <branch name="XLXN_80(31:0)">
            <wire x2="3488" y1="1776" y2="1776" x1="3392" />
            <wire x2="3488" y1="1776" y2="2080" x1="3488" />
            <wire x2="3600" y1="2080" y2="2080" x1="3488" />
        </branch>
        <branch name="XLXN_81(31:0)">
            <wire x2="3472" y1="1840" y2="1840" x1="3392" />
            <wire x2="3472" y1="1840" y2="2144" x1="3472" />
            <wire x2="3600" y1="2144" y2="2144" x1="3472" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="4208" y1="1232" y2="1232" x1="4144" />
            <wire x2="4208" y1="1232" y2="1472" x1="4208" />
            <wire x2="4320" y1="1472" y2="1472" x1="4208" />
        </branch>
        <branch name="XLXN_84(4:0)">
            <wire x2="1776" y1="1888" y2="1888" x1="1728" />
            <wire x2="1728" y1="1888" y2="2288" x1="1728" />
            <wire x2="4288" y1="2288" y2="2288" x1="1728" />
            <wire x2="4192" y1="1344" y2="1344" x1="4144" />
            <wire x2="4192" y1="1344" y2="1392" x1="4192" />
            <wire x2="4192" y1="1392" y2="1536" x1="4192" />
            <wire x2="4320" y1="1536" y2="1536" x1="4192" />
            <wire x2="4288" y1="1392" y2="1392" x1="4192" />
            <wire x2="4288" y1="1392" y2="2288" x1="4288" />
        </branch>
        <branch name="XLXN_85(31:0)">
            <wire x2="1776" y1="1808" y2="1808" x1="1744" />
            <wire x2="1744" y1="1808" y2="2272" x1="1744" />
            <wire x2="4256" y1="2272" y2="2272" x1="1744" />
            <wire x2="4176" y1="1456" y2="1456" x1="4144" />
            <wire x2="4176" y1="1456" y2="1520" x1="4176" />
            <wire x2="4176" y1="1520" y2="1600" x1="4176" />
            <wire x2="4320" y1="1600" y2="1600" x1="4176" />
            <wire x2="4256" y1="1520" y2="1520" x1="4176" />
            <wire x2="4256" y1="1520" y2="2272" x1="4256" />
        </branch>
        <branch name="XLXN_86(31:0)">
            <wire x2="4160" y1="1568" y2="1568" x1="4144" />
            <wire x2="4160" y1="1568" y2="1664" x1="4160" />
            <wire x2="4320" y1="1664" y2="1664" x1="4160" />
        </branch>
        <branch name="XLXN_87(31:0)">
            <wire x2="4224" y1="1680" y2="1680" x1="4144" />
            <wire x2="4224" y1="1680" y2="1728" x1="4224" />
            <wire x2="4320" y1="1728" y2="1728" x1="4224" />
        </branch>
        <branch name="XLXN_88(5:0)">
            <wire x2="4320" y1="1792" y2="1792" x1="4144" />
        </branch>
        <branch name="XLXN_89(31:0)">
            <wire x2="4224" y1="1904" y2="1904" x1="4144" />
            <wire x2="4224" y1="1856" y2="1904" x1="4224" />
            <wire x2="4320" y1="1856" y2="1856" x1="4224" />
        </branch>
        <branch name="XLXN_90(31:0)">
            <wire x2="4224" y1="2016" y2="2016" x1="4144" />
            <wire x2="4224" y1="1920" y2="2016" x1="4224" />
            <wire x2="4320" y1="1920" y2="1920" x1="4224" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="4976" y1="1360" y2="1360" x1="4896" />
            <wire x2="4976" y1="1360" y2="1440" x1="4976" />
            <wire x2="5088" y1="1440" y2="1440" x1="4976" />
        </branch>
        <branch name="XLXN_93(4:0)">
            <wire x2="4960" y1="1440" y2="1440" x1="4896" />
            <wire x2="4960" y1="1440" y2="1504" x1="4960" />
            <wire x2="5088" y1="1504" y2="1504" x1="4960" />
        </branch>
        <branch name="XLXN_94(31:0)">
            <wire x2="4992" y1="1520" y2="1520" x1="4896" />
            <wire x2="4992" y1="1520" y2="1568" x1="4992" />
            <wire x2="5088" y1="1568" y2="1568" x1="4992" />
        </branch>
        <branch name="XLXN_95(31:0)">
            <wire x2="4992" y1="1600" y2="1600" x1="4896" />
            <wire x2="4992" y1="1600" y2="1632" x1="4992" />
            <wire x2="5088" y1="1632" y2="1632" x1="4992" />
        </branch>
        <branch name="XLXN_96(31:0)">
            <wire x2="4992" y1="1680" y2="1680" x1="4896" />
            <wire x2="4992" y1="1680" y2="1696" x1="4992" />
            <wire x2="5088" y1="1696" y2="1696" x1="4992" />
        </branch>
        <branch name="XLXN_97(5:0)">
            <wire x2="5088" y1="1760" y2="1760" x1="4896" />
        </branch>
        <branch name="XLXN_98(31:0)">
            <wire x2="4992" y1="1840" y2="1840" x1="4896" />
            <wire x2="4992" y1="1824" y2="1840" x1="4992" />
            <wire x2="5088" y1="1824" y2="1824" x1="4992" />
        </branch>
        <branch name="XLXN_99(31:0)">
            <wire x2="4992" y1="1920" y2="1920" x1="4896" />
            <wire x2="4992" y1="1888" y2="1920" x1="4992" />
            <wire x2="5088" y1="1888" y2="1888" x1="4992" />
        </branch>
        <branch name="XLXN_100(31:0)">
            <wire x2="5088" y1="1952" y2="1952" x1="5008" />
            <wire x2="5008" y1="1952" y2="2064" x1="5008" />
            <wire x2="6016" y1="2064" y2="2064" x1="5008" />
            <wire x2="6016" y1="2064" y2="2608" x1="6016" />
            <wire x2="6016" y1="2608" y2="2608" x1="5952" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="5504" y1="2512" y2="2672" x1="5504" />
            <wire x2="5568" y1="2672" y2="2672" x1="5504" />
            <wire x2="5648" y1="2512" y2="2512" x1="5504" />
            <wire x2="5648" y1="1440" y2="1440" x1="5616" />
            <wire x2="5648" y1="1440" y2="2512" x1="5648" />
        </branch>
        <branch name="XLXN_104">
            <wire x2="5520" y1="2528" y2="2800" x1="5520" />
            <wire x2="5568" y1="2800" y2="2800" x1="5520" />
            <wire x2="5680" y1="2528" y2="2528" x1="5520" />
            <wire x2="5680" y1="1504" y2="1504" x1="5616" />
            <wire x2="5680" y1="1504" y2="2528" x1="5680" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="5552" y1="2544" y2="2736" x1="5552" />
            <wire x2="5568" y1="2736" y2="2736" x1="5552" />
            <wire x2="5664" y1="2544" y2="2544" x1="5552" />
            <wire x2="5664" y1="1568" y2="1568" x1="5616" />
            <wire x2="5664" y1="1568" y2="2544" x1="5664" />
        </branch>
        <branch name="XLXN_106(4:0)">
            <wire x2="1536" y1="960" y2="2048" x1="1536" />
            <wire x2="1776" y1="2048" y2="2048" x1="1536" />
            <wire x2="5696" y1="960" y2="960" x1="1536" />
            <wire x2="5696" y1="960" y2="1392" x1="5696" />
            <wire x2="5696" y1="1392" y2="1616" x1="5696" />
            <wire x2="5632" y1="1632" y2="1632" x1="5616" />
            <wire x2="5744" y1="1600" y2="1600" x1="5632" />
            <wire x2="5632" y1="1600" y2="1616" x1="5632" />
            <wire x2="5632" y1="1616" y2="1632" x1="5632" />
            <wire x2="5696" y1="1616" y2="1616" x1="5632" />
        </branch>
        <branch name="XLXN_107(31:0)">
            <wire x2="1776" y1="1968" y2="1968" x1="1616" />
            <wire x2="1616" y1="1968" y2="2336" x1="1616" />
            <wire x2="5728" y1="2336" y2="2336" x1="1616" />
            <wire x2="5632" y1="1696" y2="1696" x1="5616" />
            <wire x2="5744" y1="1664" y2="1664" x1="5632" />
            <wire x2="5632" y1="1664" y2="1680" x1="5632" />
            <wire x2="5632" y1="1680" y2="1696" x1="5632" />
            <wire x2="5728" y1="1680" y2="1680" x1="5632" />
            <wire x2="5728" y1="1680" y2="2336" x1="5728" />
        </branch>
        <branch name="XLXN_108(31:0)">
            <wire x2="3600" y1="1824" y2="1824" x1="3536" />
            <wire x2="3536" y1="1824" y2="2256" x1="3536" />
            <wire x2="5712" y1="2256" y2="2256" x1="3536" />
            <wire x2="5632" y1="1760" y2="1760" x1="5616" />
            <wire x2="5632" y1="1728" y2="1760" x1="5632" />
            <wire x2="5712" y1="1728" y2="1728" x1="5632" />
            <wire x2="5744" y1="1728" y2="1728" x1="5712" />
            <wire x2="5712" y1="1728" y2="2256" x1="5712" />
        </branch>
        <branch name="XLXN_109(31:0)">
            <wire x2="3600" y1="1888" y2="1888" x1="3552" />
            <wire x2="3552" y1="1888" y2="2240" x1="3552" />
            <wire x2="5696" y1="2240" y2="2240" x1="3552" />
            <wire x2="5632" y1="1824" y2="1824" x1="5616" />
            <wire x2="5632" y1="1792" y2="1824" x1="5632" />
            <wire x2="5696" y1="1792" y2="1792" x1="5632" />
            <wire x2="5744" y1="1792" y2="1792" x1="5696" />
            <wire x2="5696" y1="1792" y2="2240" x1="5696" />
        </branch>
        <branch name="XLXN_110(31:0)">
            <wire x2="5536" y1="2560" y2="2928" x1="5536" />
            <wire x2="5568" y1="2928" y2="2928" x1="5536" />
            <wire x2="5632" y1="2560" y2="2560" x1="5536" />
            <wire x2="5632" y1="1888" y2="1888" x1="5616" />
            <wire x2="5632" y1="1888" y2="2560" x1="5632" />
        </branch>
        <branch name="XLXN_111(31:0)">
            <wire x2="5568" y1="2864" y2="2864" x1="5504" />
            <wire x2="5504" y1="2864" y2="3024" x1="5504" />
            <wire x2="6000" y1="3024" y2="3024" x1="5504" />
            <wire x2="6000" y1="1952" y2="1952" x1="5616" />
            <wire x2="6000" y1="1952" y2="3024" x1="6000" />
        </branch>
        <branch name="XLXN_113">
            <wire x2="1968" y1="2304" y2="2544" x1="1968" />
            <wire x2="2016" y1="2544" y2="2544" x1="1968" />
            <wire x2="6320" y1="2304" y2="2304" x1="1968" />
            <wire x2="6320" y1="1344" y2="1344" x1="6240" />
            <wire x2="6320" y1="1344" y2="2304" x1="6320" />
        </branch>
        <branch name="XLXN_115(4:0)">
            <wire x2="2016" y1="2736" y2="2736" x1="1936" />
            <wire x2="1936" y1="2736" y2="2976" x1="1936" />
            <wire x2="6304" y1="2976" y2="2976" x1="1936" />
            <wire x2="6304" y1="1504" y2="1504" x1="6240" />
            <wire x2="6304" y1="1504" y2="2976" x1="6304" />
        </branch>
        <branch name="XLXN_117(31:0)">
            <wire x2="3600" y1="1952" y2="1952" x1="3568" />
            <wire x2="3568" y1="1952" y2="2224" x1="3568" />
            <wire x2="6272" y1="2224" y2="2224" x1="3568" />
            <wire x2="6336" y1="1664" y2="1664" x1="6240" />
            <wire x2="6272" y1="1632" y2="2224" x1="6272" />
            <wire x2="6336" y1="1632" y2="1632" x1="6272" />
            <wire x2="6336" y1="1632" y2="1664" x1="6336" />
            <wire x2="6432" y1="1616" y2="1616" x1="6336" />
            <wire x2="6336" y1="1616" y2="1632" x1="6336" />
        </branch>
        <branch name="XLXN_118(31:0)">
            <wire x2="3584" y1="1024" y2="2016" x1="3584" />
            <wire x2="3600" y1="2016" y2="2016" x1="3584" />
            <wire x2="6256" y1="1024" y2="1024" x1="3584" />
            <wire x2="6256" y1="1024" y2="1712" x1="6256" />
            <wire x2="6336" y1="1712" y2="1712" x1="6256" />
            <wire x2="6336" y1="1712" y2="1744" x1="6336" />
            <wire x2="6336" y1="1744" y2="1744" x1="6240" />
            <wire x2="6432" y1="1680" y2="1680" x1="6336" />
            <wire x2="6336" y1="1680" y2="1712" x1="6336" />
        </branch>
        <branch name="XLXN_119(31:0)">
            <wire x2="6864" y1="2128" y2="2128" x1="4144" />
            <wire x2="6864" y1="1680" y2="1680" x1="6816" />
            <wire x2="6864" y1="1680" y2="2128" x1="6864" />
        </branch>
        <branch name="XLXN_120(31:0)">
            <wire x2="3520" y1="1008" y2="1760" x1="3520" />
            <wire x2="3600" y1="1760" y2="1760" x1="3520" />
            <wire x2="6880" y1="1008" y2="1008" x1="3520" />
            <wire x2="6880" y1="1008" y2="1424" x1="6880" />
            <wire x2="6880" y1="1424" y2="1424" x1="6816" />
        </branch>
        <branch name="XLXN_121">
            <wire x2="1728" y1="1056" y2="1248" x1="1728" />
            <wire x2="1776" y1="1248" y2="1248" x1="1728" />
            <wire x2="4208" y1="1056" y2="1056" x1="1728" />
            <wire x2="4208" y1="1056" y2="1168" x1="4208" />
            <wire x2="4224" y1="1168" y2="1168" x1="4208" />
            <wire x2="4224" y1="1168" y2="1408" x1="4224" />
            <wire x2="4320" y1="1408" y2="1408" x1="4224" />
            <wire x2="4224" y1="1120" y2="1120" x1="4144" />
            <wire x2="4224" y1="1120" y2="1168" x1="4224" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="4992" y1="1280" y2="1280" x1="4896" />
            <wire x2="4992" y1="1280" y2="1312" x1="4992" />
            <wire x2="4992" y1="1312" y2="1376" x1="4992" />
            <wire x2="5088" y1="1376" y2="1376" x1="4992" />
        </branch>
        <branch name="XLXN_123">
            <wire x2="1696" y1="976" y2="1328" x1="1696" />
            <wire x2="1776" y1="1328" y2="1328" x1="1696" />
            <wire x2="5664" y1="976" y2="976" x1="1696" />
            <wire x2="5664" y1="976" y2="1344" x1="5664" />
            <wire x2="5680" y1="1344" y2="1344" x1="5664" />
            <wire x2="5680" y1="1344" y2="1472" x1="5680" />
            <wire x2="5744" y1="1472" y2="1472" x1="5680" />
            <wire x2="5680" y1="1312" y2="1312" x1="5616" />
            <wire x2="5680" y1="1312" y2="1344" x1="5680" />
        </branch>
        <branch name="XLXN_116(31:0)">
            <wire x2="2016" y1="2800" y2="2800" x1="1984" />
            <wire x2="1984" y1="2800" y2="2992" x1="1984" />
            <wire x2="6288" y1="2992" y2="2992" x1="1984" />
            <wire x2="6288" y1="1584" y2="1584" x1="6240" />
            <wire x2="6288" y1="1584" y2="1856" x1="6288" />
            <wire x2="6288" y1="1856" y2="2992" x1="6288" />
        </branch>
        <branch name="clk_init">
            <wire x2="112" y1="1408" y2="1408" x1="64" />
            <wire x2="176" y1="1408" y2="1408" x1="112" />
            <wire x2="112" y1="1408" y2="1680" x1="112" />
            <wire x2="752" y1="1680" y2="1680" x1="112" />
            <wire x2="752" y1="1392" y2="1680" x1="752" />
            <wire x2="880" y1="1392" y2="1392" x1="752" />
            <wire x2="960" y1="1392" y2="1392" x1="880" />
            <wire x2="1136" y1="1392" y2="1392" x1="960" />
            <wire x2="880" y1="1312" y2="1392" x1="880" />
            <wire x2="1600" y1="1312" y2="1312" x1="880" />
            <wire x2="1600" y1="1312" y2="2416" x1="1600" />
            <wire x2="2016" y1="2416" y2="2416" x1="1600" />
            <wire x2="960" y1="1088" y2="1392" x1="960" />
            <wire x2="2480" y1="1088" y2="1088" x1="960" />
            <wire x2="2480" y1="1088" y2="1264" x1="2480" />
            <wire x2="2688" y1="1264" y2="1264" x1="2480" />
            <wire x2="2784" y1="1264" y2="1264" x1="2688" />
            <wire x2="2688" y1="1040" y2="1264" x1="2688" />
            <wire x2="4192" y1="1040" y2="1040" x1="2688" />
            <wire x2="4192" y1="1040" y2="1280" x1="4192" />
            <wire x2="4272" y1="1280" y2="1280" x1="4192" />
            <wire x2="4320" y1="1280" y2="1280" x1="4272" />
            <wire x2="4272" y1="1168" y2="1280" x1="4272" />
            <wire x2="5728" y1="1168" y2="1168" x1="4272" />
            <wire x2="5728" y1="1168" y2="1216" x1="5728" />
            <wire x2="6400" y1="1216" y2="1216" x1="5728" />
            <wire x2="6400" y1="1216" y2="1424" x1="6400" />
            <wire x2="6432" y1="1424" y2="1424" x1="6400" />
            <wire x2="5728" y1="1216" y2="1264" x1="5728" />
            <wire x2="5728" y1="1264" y2="1344" x1="5728" />
            <wire x2="5744" y1="1344" y2="1344" x1="5728" />
            <wire x2="5024" y1="1264" y2="2608" x1="5024" />
            <wire x2="5568" y1="2608" y2="2608" x1="5024" />
            <wire x2="5728" y1="1264" y2="1264" x1="5024" />
        </branch>
        <iomarker fontsize="28" x="64" y="1408" name="clk_init" orien="R180" />
        <instance x="176" y="1632" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_55">
            <wire x2="96" y1="1072" y2="1536" x1="96" />
            <wire x2="176" y1="1536" y2="1536" x1="96" />
            <wire x2="2448" y1="1072" y2="1072" x1="96" />
            <wire x2="2448" y1="1072" y2="1424" x1="2448" />
            <wire x2="2448" y1="1424" y2="1424" x1="2432" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="784" y1="1408" y2="1408" x1="720" />
            <wire x2="784" y1="1408" y2="1696" x1="784" />
            <wire x2="784" y1="1696" y2="1696" x1="720" />
            <wire x2="720" y1="1696" y2="1856" x1="720" />
            <wire x2="736" y1="1856" y2="1856" x1="720" />
        </branch>
        <branch name="rst_init">
            <wire x2="176" y1="1472" y2="1472" x1="160" />
            <wire x2="160" y1="1472" y2="1648" x1="160" />
            <wire x2="1120" y1="1648" y2="1648" x1="160" />
            <wire x2="1120" y1="1456" y2="1456" x1="1104" />
            <wire x2="1136" y1="1456" y2="1456" x1="1120" />
            <wire x2="1120" y1="1456" y2="1648" x1="1120" />
            <wire x2="1120" y1="1168" y2="1456" x1="1120" />
            <wire x2="1568" y1="1168" y2="1168" x1="1120" />
            <wire x2="1600" y1="1168" y2="1168" x1="1568" />
            <wire x2="1776" y1="1168" y2="1168" x1="1600" />
            <wire x2="1600" y1="1168" y2="1184" x1="1600" />
            <wire x2="1680" y1="1184" y2="1184" x1="1600" />
            <wire x2="1680" y1="1184" y2="2480" x1="1680" />
            <wire x2="2016" y1="2480" y2="2480" x1="1680" />
            <wire x2="1568" y1="1104" y2="1168" x1="1568" />
            <wire x2="2464" y1="1104" y2="1104" x1="1568" />
            <wire x2="2464" y1="1104" y2="1328" x1="2464" />
            <wire x2="2672" y1="1328" y2="1328" x1="2464" />
            <wire x2="2784" y1="1328" y2="1328" x1="2672" />
            <wire x2="2672" y1="1120" y2="1328" x1="2672" />
            <wire x2="3408" y1="1120" y2="1120" x1="2672" />
            <wire x2="3600" y1="1120" y2="1120" x1="3408" />
            <wire x2="3408" y1="1120" y2="2192" x1="3408" />
            <wire x2="4304" y1="2192" y2="2192" x1="3408" />
            <wire x2="4304" y1="1376" y2="1376" x1="4240" />
            <wire x2="4304" y1="1376" y2="2192" x1="4304" />
            <wire x2="4240" y1="1376" y2="2016" x1="4240" />
            <wire x2="5040" y1="2016" y2="2016" x1="4240" />
            <wire x2="4320" y1="1344" y2="1344" x1="4304" />
            <wire x2="4304" y1="1344" y2="1376" x1="4304" />
            <wire x2="4960" y1="1184" y2="1344" x1="4960" />
            <wire x2="5040" y1="1344" y2="1344" x1="4960" />
            <wire x2="5040" y1="1344" y2="2016" x1="5040" />
            <wire x2="5648" y1="1184" y2="1184" x1="4960" />
            <wire x2="5648" y1="1184" y2="1408" x1="5648" />
            <wire x2="5712" y1="1408" y2="1408" x1="5648" />
            <wire x2="5744" y1="1408" y2="1408" x1="5712" />
            <wire x2="5088" y1="1312" y2="1312" x1="5040" />
            <wire x2="5040" y1="1312" y2="1344" x1="5040" />
            <wire x2="5712" y1="1248" y2="1408" x1="5712" />
            <wire x2="6304" y1="1248" y2="1248" x1="5712" />
            <wire x2="6304" y1="1248" y2="1488" x1="6304" />
            <wire x2="6432" y1="1488" y2="1488" x1="6304" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1456" name="rst_init" orien="R180" />
        <branch name="XLXN_141">
            <wire x2="3568" y1="944" y2="1248" x1="3568" />
            <wire x2="3600" y1="1248" y2="1248" x1="3568" />
            <wire x2="5632" y1="944" y2="944" x1="3568" />
            <wire x2="5632" y1="944" y2="1376" x1="5632" />
            <wire x2="5664" y1="1376" y2="1376" x1="5632" />
            <wire x2="5664" y1="1376" y2="1536" x1="5664" />
            <wire x2="5744" y1="1536" y2="1536" x1="5664" />
            <wire x2="5632" y1="1376" y2="1376" x1="5616" />
        </branch>
        <branch name="XLXN_142">
            <wire x2="3504" y1="1072" y2="1312" x1="3504" />
            <wire x2="3600" y1="1312" y2="1312" x1="3504" />
            <wire x2="6288" y1="1072" y2="1072" x1="3504" />
            <wire x2="6288" y1="1072" y2="1424" x1="6288" />
            <wire x2="6336" y1="1424" y2="1424" x1="6288" />
            <wire x2="6336" y1="1424" y2="1552" x1="6336" />
            <wire x2="6432" y1="1552" y2="1552" x1="6336" />
            <wire x2="6288" y1="1424" y2="1424" x1="6240" />
        </branch>
        <branch name="XLXN_144(31:0)">
            <wire x2="128" y1="1120" y2="1600" x1="128" />
            <wire x2="176" y1="1600" y2="1600" x1="128" />
            <wire x2="2576" y1="1120" y2="1120" x1="128" />
            <wire x2="2576" y1="1120" y2="2000" x1="2576" />
            <wire x2="2576" y1="2000" y2="2000" x1="2432" />
        </branch>
        <branch name="XLXN_145(4:0)">
            <wire x2="2016" y1="2928" y2="2928" x1="2000" />
            <wire x2="2000" y1="2928" y2="3008" x1="2000" />
            <wire x2="2480" y1="3008" y2="3008" x1="2000" />
            <wire x2="2480" y1="1872" y2="1872" x1="2432" />
            <wire x2="2480" y1="1872" y2="3008" x1="2480" />
        </branch>
        <branch name="XLXN_150(31:0)">
            <wire x2="1040" y1="1584" y2="1744" x1="1040" />
            <wire x2="1184" y1="1744" y2="1744" x1="1040" />
            <wire x2="1184" y1="1744" y2="1856" x1="1184" />
            <wire x2="1136" y1="1584" y2="1584" x1="1040" />
            <wire x2="1184" y1="1856" y2="1856" x1="1120" />
        </branch>
        <branch name="XLXN_151(31:0)">
            <wire x2="1056" y1="1520" y2="1760" x1="1056" />
            <wire x2="1168" y1="1760" y2="1760" x1="1056" />
            <wire x2="1168" y1="1760" y2="1920" x1="1168" />
            <wire x2="1136" y1="1520" y2="1520" x1="1056" />
            <wire x2="1168" y1="1920" y2="1920" x1="1120" />
        </branch>
    </sheet>
</drawing>