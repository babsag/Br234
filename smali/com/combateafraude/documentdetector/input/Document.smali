.class public final enum Lcom/combateafraude/documentdetector/input/Document;
.super Ljava/lang/Enum;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/input/Document;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum ANY:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum CNH_BACK:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum CNH_FRONT:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum CNH_FULL:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum CRLV:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum CTPS_BACK:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum CTPS_FRONT:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum OTHERS:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum PASSPORT:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum RG_BACK:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum RG_FRONT:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum RG_FULL:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum RNE_BACK:Lcom/combateafraude/documentdetector/input/Document;

.field public static final enum RNE_FRONT:Lcom/combateafraude/documentdetector/input/Document;


# instance fields
.field private audio:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audio"
    .end annotation
.end field

.field private greenMaskResId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "greenMaskResId"
    .end annotation
.end field

.field private illustration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "illustration"
    .end annotation
.end field

.field private labels:[Lcom/combateafraude/documentdetector/controller/detection/Label;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "labels"
    .end annotation
.end field

.field private redMaskResId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redMaskResId"
    .end annotation
.end field

.field private stepLabel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stepLabel"
    .end annotation
.end field

.field private whiteMaskResId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whiteMaskResId"
    .end annotation
.end field

.field public wrongDocumentFoundMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wrongDocumentFoundMessage"
    .end annotation
.end field

.field public wrongDocumentFoundMessageId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wrongDocumentFoundMessageId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v11, Lcom/combateafraude/documentdetector/input/Document;

    const/4 v12, 0x2

    new-array v3, v12, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v0, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    const/4 v13, 0x0

    aput-object v0, v3, v13

    sget-object v0, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_NEW_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    const/4 v14, 0x1

    aput-object v0, v3, v14

    sget v4, Lcom/combateafraude/documentdetector/R$string;->rg_front_caf:I

    sget v5, Lcom/combateafraude/documentdetector/R$drawable;->rg_front_caf:I

    sget v6, Lcom/combateafraude/documentdetector/R$raw;->rgfront:I

    sget v7, Lcom/combateafraude/documentdetector/R$string;->rg_front_wrong_caf:I

    sget v8, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_rg_front_rotate:I

    sget v9, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_rg_front_rotate_red:I

    sget v10, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_rg_front_rotate_green:I

    const-string v1, "RG_FRONT"

    const/4 v2, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v11, Lcom/combateafraude/documentdetector/input/Document;->RG_FRONT:Lcom/combateafraude/documentdetector/input/Document;

    .line 2
    new-instance v0, Lcom/combateafraude/documentdetector/input/Document;

    new-array v1, v12, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v2, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v2, v1, v13

    sget-object v2, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_NEW_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v2, v1, v14

    sget v19, Lcom/combateafraude/documentdetector/R$string;->rg_back_caf:I

    sget v20, Lcom/combateafraude/documentdetector/R$drawable;->rg_back_caf:I

    sget v21, Lcom/combateafraude/documentdetector/R$raw;->rgback:I

    sget v22, Lcom/combateafraude/documentdetector/R$string;->rg_back_wrong_caf:I

    sget v23, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_rg_back_rotate:I

    sget v24, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_rg_back_rotate_red:I

    sget v25, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_rg_back_rotate_green:I

    const-string v16, "RG_BACK"

    const/16 v17, 0x1

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v0, Lcom/combateafraude/documentdetector/input/Document;->RG_BACK:Lcom/combateafraude/documentdetector/input/Document;

    .line 3
    new-instance v1, Lcom/combateafraude/documentdetector/input/Document;

    new-array v2, v12, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v3, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v3, v2, v13

    sget-object v3, Lcom/combateafraude/documentdetector/controller/detection/Label;->RG_NEW_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v3, v2, v14

    sget v30, Lcom/combateafraude/documentdetector/R$string;->rg_full_caf:I

    sget v31, Lcom/combateafraude/documentdetector/R$drawable;->rg_caf:I

    sget v32, Lcom/combateafraude/documentdetector/R$raw;->rg:I

    sget v33, Lcom/combateafraude/documentdetector/R$string;->rg_full_wrong_caf:I

    sget v3, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_document_white:I

    sget v4, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_document_red:I

    sget v5, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_document_green:I

    const-string v27, "RG_FULL"

    const/16 v28, 0x2

    move-object/from16 v26, v1

    move-object/from16 v29, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v36, v5

    invoke-direct/range {v26 .. v36}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v1, Lcom/combateafraude/documentdetector/input/Document;->RG_FULL:Lcom/combateafraude/documentdetector/input/Document;

    .line 4
    new-instance v2, Lcom/combateafraude/documentdetector/input/Document;

    new-array v6, v12, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v7, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v7, v6, v13

    sget-object v7, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_NEW_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v7, v6, v14

    sget v19, Lcom/combateafraude/documentdetector/R$string;->cnh_front_caf:I

    sget v20, Lcom/combateafraude/documentdetector/R$drawable;->cnh_front_caf:I

    sget v21, Lcom/combateafraude/documentdetector/R$raw;->cnhfront:I

    sget v22, Lcom/combateafraude/documentdetector/R$string;->cnh_front_wrong_caf:I

    sget v23, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_cnh_front_rotate:I

    sget v24, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_cnh_front_rotate_red:I

    sget v25, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_cnh_front_rotate_green:I

    const-string v16, "CNH_FRONT"

    const/16 v17, 0x3

    move-object v15, v2

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v2, Lcom/combateafraude/documentdetector/input/Document;->CNH_FRONT:Lcom/combateafraude/documentdetector/input/Document;

    .line 5
    new-instance v6, Lcom/combateafraude/documentdetector/input/Document;

    new-array v7, v12, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v8, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v8, v7, v13

    sget-object v8, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_NEW_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v8, v7, v14

    sget v30, Lcom/combateafraude/documentdetector/R$string;->cnh_back_caf:I

    sget v31, Lcom/combateafraude/documentdetector/R$drawable;->cnh_back_caf:I

    sget v32, Lcom/combateafraude/documentdetector/R$raw;->cnhback:I

    sget v33, Lcom/combateafraude/documentdetector/R$string;->cnh_back_wrong_caf:I

    sget v34, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_cnh_back_rotate:I

    sget v35, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_cnh_back_rotate_red:I

    sget v36, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_cnh_back_rotate_green:I

    const-string v27, "CNH_BACK"

    const/16 v28, 0x4

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    invoke-direct/range {v26 .. v36}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v6, Lcom/combateafraude/documentdetector/input/Document;->CNH_BACK:Lcom/combateafraude/documentdetector/input/Document;

    .line 6
    new-instance v7, Lcom/combateafraude/documentdetector/input/Document;

    new-array v8, v12, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v9, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v9, v8, v13

    sget-object v9, Lcom/combateafraude/documentdetector/controller/detection/Label;->CNH_NEW_FULL:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v9, v8, v14

    sget v19, Lcom/combateafraude/documentdetector/R$string;->cnh_full_caf:I

    sget v20, Lcom/combateafraude/documentdetector/R$drawable;->cnh_caf:I

    sget v21, Lcom/combateafraude/documentdetector/R$raw;->cnh:I

    sget v22, Lcom/combateafraude/documentdetector/R$string;->cnh_full_wrong_caf:I

    const-string v16, "CNH_FULL"

    const/16 v17, 0x5

    move-object v15, v7

    move-object/from16 v18, v8

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v7, Lcom/combateafraude/documentdetector/input/Document;->CNH_FULL:Lcom/combateafraude/documentdetector/input/Document;

    .line 7
    new-instance v8, Lcom/combateafraude/documentdetector/input/Document;

    new-array v9, v12, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v10, Lcom/combateafraude/documentdetector/controller/detection/Label;->CRLV:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v10, v9, v13

    sget-object v10, Lcom/combateafraude/documentdetector/controller/detection/Label;->CRLV_NEW:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v10, v9, v14

    sget v19, Lcom/combateafraude/documentdetector/R$string;->crlv_caf:I

    sget v20, Lcom/combateafraude/documentdetector/R$drawable;->crlv:I

    sget v21, Lcom/combateafraude/documentdetector/R$raw;->crlv:I

    sget v22, Lcom/combateafraude/documentdetector/R$string;->crlv_wrong_caf:I

    const-string v16, "CRLV"

    const/16 v17, 0x6

    move-object v15, v8

    move-object/from16 v18, v9

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v8, Lcom/combateafraude/documentdetector/input/Document;->CRLV:Lcom/combateafraude/documentdetector/input/Document;

    .line 8
    new-instance v9, Lcom/combateafraude/documentdetector/input/Document;

    new-array v10, v12, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v15, Lcom/combateafraude/documentdetector/controller/detection/Label;->RNE_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v15, v10, v13

    sget-object v15, Lcom/combateafraude/documentdetector/controller/detection/Label;->RNM_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v15, v10, v14

    sget v19, Lcom/combateafraude/documentdetector/R$string;->rne_front_caf:I

    sget v20, Lcom/combateafraude/documentdetector/R$drawable;->rne_front:I

    sget v21, Lcom/combateafraude/documentdetector/R$raw;->rnefront:I

    sget v22, Lcom/combateafraude/documentdetector/R$string;->rne_front_wrong_caf:I

    const-string v16, "RNE_FRONT"

    const/16 v17, 0x7

    move-object v15, v9

    move-object/from16 v18, v10

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v9, Lcom/combateafraude/documentdetector/input/Document;->RNE_FRONT:Lcom/combateafraude/documentdetector/input/Document;

    .line 9
    new-instance v3, Lcom/combateafraude/documentdetector/input/Document;

    new-array v4, v12, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/detection/Label;->RNE_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v5, v4, v13

    sget-object v5, Lcom/combateafraude/documentdetector/controller/detection/Label;->RNM_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v5, v4, v14

    sget v27, Lcom/combateafraude/documentdetector/R$string;->rne_back_caf:I

    sget v28, Lcom/combateafraude/documentdetector/R$drawable;->rne_back:I

    sget v29, Lcom/combateafraude/documentdetector/R$raw;->rneback:I

    sget v30, Lcom/combateafraude/documentdetector/R$string;->rne_back_wrong_caf:I

    sget v5, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_document_white:I

    sget v10, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_document_red:I

    sget v34, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_document_green:I

    const-string v24, "RNE_BACK"

    const/16 v25, 0x8

    move-object/from16 v23, v3

    move-object/from16 v26, v4

    move/from16 v31, v5

    move/from16 v32, v10

    move/from16 v33, v34

    invoke-direct/range {v23 .. v33}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v3, Lcom/combateafraude/documentdetector/input/Document;->RNE_BACK:Lcom/combateafraude/documentdetector/input/Document;

    .line 10
    new-instance v4, Lcom/combateafraude/documentdetector/input/Document;

    new-array v15, v14, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v16, Lcom/combateafraude/documentdetector/controller/detection/Label;->CTPS_BACK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v16, v15, v13

    sget v19, Lcom/combateafraude/documentdetector/R$string;->ctps_back_caf:I

    sget v20, Lcom/combateafraude/documentdetector/R$drawable;->ctps_back_caf:I

    sget v21, Lcom/combateafraude/documentdetector/R$raw;->ctpsback:I

    sget v22, Lcom/combateafraude/documentdetector/R$string;->ctps_back_caf_wrong_caf:I

    const-string v16, "CTPS_BACK"

    const/16 v17, 0x9

    move-object/from16 v18, v15

    move-object v15, v4

    move/from16 v23, v5

    move/from16 v24, v10

    move/from16 v25, v34

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v4, Lcom/combateafraude/documentdetector/input/Document;->CTPS_BACK:Lcom/combateafraude/documentdetector/input/Document;

    .line 11
    new-instance v26, Lcom/combateafraude/documentdetector/input/Document;

    new-array v15, v14, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v16, Lcom/combateafraude/documentdetector/controller/detection/Label;->CTPS_FRONT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v16, v15, v13

    sget v19, Lcom/combateafraude/documentdetector/R$string;->ctps_front_caf:I

    sget v20, Lcom/combateafraude/documentdetector/R$drawable;->ctps_front_caf:I

    sget v21, Lcom/combateafraude/documentdetector/R$raw;->ctpsfront:I

    sget v22, Lcom/combateafraude/documentdetector/R$string;->ctps_front_caf_wrong_caf:I

    const-string v16, "CTPS_FRONT"

    const/16 v17, 0xa

    move-object/from16 v18, v15

    move-object/from16 v15, v26

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v26, Lcom/combateafraude/documentdetector/input/Document;->CTPS_FRONT:Lcom/combateafraude/documentdetector/input/Document;

    .line 12
    new-instance v27, Lcom/combateafraude/documentdetector/input/Document;

    new-array v15, v14, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v16, Lcom/combateafraude/documentdetector/controller/detection/Label;->PASSPORT:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v16, v15, v13

    sget v19, Lcom/combateafraude/documentdetector/R$string;->passport_caf:I

    sget v20, Lcom/combateafraude/documentdetector/R$drawable;->passport:I

    sget v21, Lcom/combateafraude/documentdetector/R$raw;->passport:I

    sget v22, Lcom/combateafraude/documentdetector/R$string;->passport_wrong_caf:I

    const-string v16, "PASSPORT"

    const/16 v17, 0xb

    move-object/from16 v18, v15

    move-object/from16 v15, v27

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v27, Lcom/combateafraude/documentdetector/input/Document;->PASSPORT:Lcom/combateafraude/documentdetector/input/Document;

    .line 13
    new-instance v28, Lcom/combateafraude/documentdetector/input/Document;

    new-array v15, v14, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v29, Lcom/combateafraude/documentdetector/controller/detection/Label;->GENERIC:Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v29, v15, v13

    sget v30, Lcom/combateafraude/documentdetector/R$string;->generic_step_label_caf:I

    sget v31, Lcom/combateafraude/documentdetector/R$drawable;->generic_front_caf:I

    sget v32, Lcom/combateafraude/documentdetector/R$raw;->identifydocument:I

    sget v33, Lcom/combateafraude/documentdetector/R$string;->others_wrong_caf:I

    const-string v16, "OTHERS"

    const/16 v17, 0xc

    move-object/from16 v18, v15

    move-object/from16 v15, v28

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v32

    move/from16 v22, v33

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v28, Lcom/combateafraude/documentdetector/input/Document;->OTHERS:Lcom/combateafraude/documentdetector/input/Document;

    .line 14
    new-instance v35, Lcom/combateafraude/documentdetector/input/Document;

    new-array v15, v14, [Lcom/combateafraude/documentdetector/controller/detection/Label;

    aput-object v29, v15, v13

    const-string v16, "ANY"

    const/16 v17, 0xd

    move-object/from16 v18, v15

    move-object/from16 v15, v35

    invoke-direct/range {v15 .. v25}, Lcom/combateafraude/documentdetector/input/Document;-><init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V

    sput-object v35, Lcom/combateafraude/documentdetector/input/Document;->ANY:Lcom/combateafraude/documentdetector/input/Document;

    const/16 v5, 0xe

    new-array v5, v5, [Lcom/combateafraude/documentdetector/input/Document;

    aput-object v11, v5, v13

    aput-object v0, v5, v14

    aput-object v1, v5, v12

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v7, v5, v0

    const/4 v0, 0x6

    aput-object v8, v5, v0

    const/4 v0, 0x7

    aput-object v9, v5, v0

    const/16 v0, 0x8

    aput-object v3, v5, v0

    const/16 v0, 0x9

    aput-object v4, v5, v0

    const/16 v0, 0xa

    aput-object v26, v5, v0

    const/16 v0, 0xb

    aput-object v27, v5, v0

    const/16 v0, 0xc

    aput-object v28, v5, v0

    const/16 v0, 0xd

    aput-object v35, v5, v0

    .line 15
    sput-object v5, Lcom/combateafraude/documentdetector/input/Document;->$VALUES:[Lcom/combateafraude/documentdetector/input/Document;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Lcom/combateafraude/documentdetector/controller/detection/Label;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/combateafraude/documentdetector/controller/detection/Label;",
            "IIIIIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/combateafraude/documentdetector/input/Document;->labels:[Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 3
    iput p4, p0, Lcom/combateafraude/documentdetector/input/Document;->stepLabel:I

    .line 4
    iput p5, p0, Lcom/combateafraude/documentdetector/input/Document;->illustration:I

    .line 5
    iput p6, p0, Lcom/combateafraude/documentdetector/input/Document;->audio:I

    .line 6
    iput p7, p0, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessageId:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 8
    iput p8, p0, Lcom/combateafraude/documentdetector/input/Document;->whiteMaskResId:I

    .line 9
    iput p9, p0, Lcom/combateafraude/documentdetector/input/Document;->redMaskResId:I

    .line 10
    iput p10, p0, Lcom/combateafraude/documentdetector/input/Document;->greenMaskResId:I

    return-void
.end method

.method public static containsLabel(Lcom/combateafraude/documentdetector/controller/detection/Label;)Lcom/combateafraude/documentdetector/input/Document;
    .locals 9

    .line 1
    invoke-static {}, Lcom/combateafraude/documentdetector/input/Document;->values()[Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    iget-object v5, v4, Lcom/combateafraude/documentdetector/input/Document;->labels:[Lcom/combateafraude/documentdetector/controller/detection/Label;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    if-ne v8, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDocumentWrongMessageByStepLabel(Ljava/lang/String;)I
    .locals 9

    .line 1
    invoke-static {}, Lcom/combateafraude/documentdetector/input/Document;->values()[Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    iget-object v5, v4, Lcom/combateafraude/documentdetector/input/Document;->labels:[Lcom/combateafraude/documentdetector/controller/detection/Label;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 3
    invoke-virtual {v8}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4
    iget p0, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessageId:I

    return p0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/Document;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/documentdetector/input/Document;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/input/Document;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/documentdetector/input/Document;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/input/Document;->$VALUES:[Lcom/combateafraude/documentdetector/input/Document;

    invoke-virtual {v0}, [Lcom/combateafraude/documentdetector/input/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/documentdetector/input/Document;

    return-object v0
.end method


# virtual methods
.method public getAudio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/Document;->audio:I

    return v0
.end method

.method public getGreenMaskResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/Document;->greenMaskResId:I

    return v0
.end method

.method public getIllustration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/Document;->illustration:I

    return v0
.end method

.method public getLabels()[Lcom/combateafraude/documentdetector/controller/detection/Label;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/Document;->labels:[Lcom/combateafraude/documentdetector/controller/detection/Label;

    return-object v0
.end method

.method public getRedMaskResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/Document;->redMaskResId:I

    return v0
.end method

.method public getStepLabel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/Document;->stepLabel:I

    return v0
.end method

.method public getWhiteMaskResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/Document;->whiteMaskResId:I

    return v0
.end method

.method public getWrongDocumentFoundMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessageId:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
