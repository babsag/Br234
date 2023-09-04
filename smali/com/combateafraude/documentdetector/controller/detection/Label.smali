.class public final enum Lcom/combateafraude/documentdetector/controller/detection/Label;
.super Ljava/lang/Enum;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/controller/detection/Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum BLANK:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CNH_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CNH_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CNH_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CNH_NEW_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CNH_NEW_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CNH_NEW_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CRLV:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CRLV_NEW:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CTPS_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum CTPS_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum GENERIC:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum PASSPORT:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RG_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RG_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RG_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RG_NEW_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RG_NEW_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RG_NEW_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RNE_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RNE_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RNM_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field public static final enum RNM_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;


# instance fields
.field private documentType:Ljava/lang/String;

.field private scanLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v1, "BLANK"

    const/4 v2, 0x0

    const-string v3, "blank"

    invoke-direct {v0, v1, v2, v3}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/detection/Label;->BLANK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 2
    new-instance v1, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v3, "CNH_BACK"

    const/4 v4, 0x1

    const-string v5, "cnh_back"

    const-string v6, "cnh"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 3
    new-instance v3, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v5, "CNH_FRONT"

    const/4 v7, 0x2

    const-string v8, "cnh_front"

    invoke-direct {v3, v5, v7, v8, v6}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 4
    new-instance v5, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v8, "CNH_FULL"

    const/4 v9, 0x3

    const-string v10, "cnh_full"

    invoke-direct {v5, v8, v9, v10, v6}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 5
    new-instance v6, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v8, "CRLV"

    const/4 v10, 0x4

    const-string v11, "crlv"

    invoke-direct {v6, v8, v10, v11, v11}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/documentdetector/controller/detection/Label;->CRLV:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 6
    new-instance v8, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v11, "GENERIC"

    const/4 v12, 0x5

    const-string v13, "generic"

    invoke-direct {v8, v11, v12, v13}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/combateafraude/documentdetector/controller/detection/Label;->GENERIC:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 7
    new-instance v11, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v13, "RG_BACK"

    const/4 v14, 0x6

    const-string v15, "rg_back"

    const-string v12, "rg"

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 8
    new-instance v13, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v15, "RG_FRONT"

    const/4 v14, 0x7

    const-string v10, "rg_front"

    invoke-direct {v13, v15, v14, v10, v12}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 9
    new-instance v10, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v15, "RG_FULL"

    const/16 v14, 0x8

    const-string v9, "rg_full"

    invoke-direct {v10, v15, v14, v9, v12}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 10
    new-instance v9, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v12, "RG_NEW_BACK"

    const/16 v15, 0x9

    const-string v14, "rg_new_back"

    const-string v7, "rg_new"

    invoke-direct {v9, v12, v15, v14, v7}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_NEW_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 11
    new-instance v12, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v14, "RG_NEW_FRONT"

    const/16 v15, 0xa

    const-string v4, "rg_new_front"

    invoke-direct {v12, v14, v15, v4, v7}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_NEW_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 12
    new-instance v4, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v14, "RG_NEW_FULL"

    const/16 v15, 0xb

    const-string v2, "rg_new_full"

    invoke-direct {v4, v14, v15, v2, v7}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_NEW_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 13
    new-instance v2, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v7, "RNE_BACK"

    const/16 v14, 0xc

    const-string v15, "rne_back"

    move-object/from16 v16, v4

    const-string v4, "rne"

    invoke-direct {v2, v7, v14, v15, v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/combateafraude/documentdetector/controller/detection/Label;->RNE_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 14
    new-instance v7, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v15, "RNE_FRONT"

    const/16 v14, 0xd

    move-object/from16 v17, v2

    const-string v2, "rne_front"

    invoke-direct {v7, v15, v14, v2, v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/combateafraude/documentdetector/controller/detection/Label;->RNE_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 15
    new-instance v2, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v4, "RNM_BACK"

    const/16 v15, 0xe

    const-string v14, "rnm_back"

    move-object/from16 v18, v7

    const-string v7, "rnm"

    invoke-direct {v2, v4, v15, v14, v7}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/combateafraude/documentdetector/controller/detection/Label;->RNM_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 16
    new-instance v4, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v14, "RNM_FRONT"

    const/16 v15, 0xf

    move-object/from16 v19, v2

    const-string v2, "rnm_front"

    invoke-direct {v4, v14, v15, v2, v7}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/combateafraude/documentdetector/controller/detection/Label;->RNM_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 17
    new-instance v2, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v7, "CTPS_BACK"

    const/16 v14, 0x10

    const-string v15, "ctps_back"

    move-object/from16 v20, v4

    const-string v4, "ctps"

    invoke-direct {v2, v7, v14, v15, v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/combateafraude/documentdetector/controller/detection/Label;->CTPS_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 18
    new-instance v4, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v7, "CTPS_FRONT"

    const/16 v14, 0x11

    const-string v15, "ctps_front"

    move-object/from16 v21, v2

    const-string v2, "ctps"

    invoke-direct {v4, v7, v14, v15, v2}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/combateafraude/documentdetector/controller/detection/Label;->CTPS_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 19
    new-instance v2, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v7, "PASSPORT"

    const/16 v14, 0x12

    const-string v15, "passport"

    move-object/from16 v22, v4

    const-string v4, "passport"

    invoke-direct {v2, v7, v14, v15, v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/combateafraude/documentdetector/controller/detection/Label;->PASSPORT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 20
    new-instance v4, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v7, "CNH_NEW_BACK"

    const/16 v14, 0x13

    const-string v15, "new_cnh_back"

    move-object/from16 v23, v2

    const-string v2, "cnh_new"

    invoke-direct {v4, v7, v14, v15, v2}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_NEW_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 21
    new-instance v7, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v14, "CNH_NEW_FRONT"

    const/16 v15, 0x14

    move-object/from16 v24, v4

    const-string v4, "new_cnh_front"

    invoke-direct {v7, v14, v15, v4, v2}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_NEW_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 22
    new-instance v4, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v14, "CNH_NEW_FULL"

    const/16 v15, 0x15

    move-object/from16 v25, v7

    const-string v7, "new_cnh_full"

    invoke-direct {v4, v14, v15, v7, v2}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_NEW_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 23
    new-instance v2, Lcom/combateafraude/documentdetector/controller/detection/Label;

    const-string v7, "CRLV_NEW"

    const/16 v14, 0x16

    const-string v15, "new_crlv"

    move-object/from16 v26, v4

    const-string v4, "crlv_new"

    invoke-direct {v2, v7, v14, v15, v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/combateafraude/documentdetector/controller/detection/Label;->CRLV_NEW:Lcom/combateafraude/documentdetector/controller/detection/Label;

    const/16 v4, 0x17

    new-array v4, v4, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    const/4 v7, 0x0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v6, v4, v0

    const/4 v0, 0x5

    aput-object v8, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v9, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    const/16 v0, 0x14

    aput-object v25, v4, v0

    const/16 v0, 0x15

    aput-object v26, v4, v0

    const/16 v0, 0x16

    aput-object v2, v4, v0

    .line 24
    sput-object v4, Lcom/combateafraude/documentdetector/controller/detection/Label;->$VALUES:[Lcom/combateafraude/documentdetector/controller/detection/Label;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/detection/Label;->scanLabel:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/detection/Label;->scanLabel:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/detection/Label;->documentType:Ljava/lang/String;

    return-void
.end method

.method public static getAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/combateafraude/documentdetector/controller/detection/Label;->values()[Lcom/combateafraude/documentdetector/controller/detection/Label;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getDocumentTypeByScanlLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/combateafraude/documentdetector/controller/detection/Label;->values()[Lcom/combateafraude/documentdetector/controller/detection/Label;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2
    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getDocumentType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getScannedLabel(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/detection/Label;
    .locals 5

    .line 1
    invoke-static {}, Lcom/combateafraude/documentdetector/controller/detection/Label;->values()[Lcom/combateafraude/documentdetector/controller/detection/Label;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/detection/Label;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/documentdetector/controller/detection/Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/controller/detection/Label;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/documentdetector/controller/detection/Label;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/detection/Label;->$VALUES:[Lcom/combateafraude/documentdetector/controller/detection/Label;

    invoke-virtual {v0}, [Lcom/combateafraude/documentdetector/controller/detection/Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    return-object v0
.end method


# virtual methods
.method public getDocumentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/Label;->documentType:Ljava/lang/String;

    return-object v0
.end method

.method public getScanLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/Label;->scanLabel:Ljava/lang/String;

    return-object v0
.end method
