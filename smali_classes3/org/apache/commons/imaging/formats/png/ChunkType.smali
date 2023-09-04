.class public final enum Lorg/apache/commons/imaging/formats/png/ChunkType;
.super Ljava/lang/Enum;
.source "ChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/png/ChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum bKGD:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum cHRM:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum hIST:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sBIT:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sCAL:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sPLT:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum tIME:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;


# instance fields
.field final array:[B

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v1, "IHDR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v3, "PLTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 3
    new-instance v3, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v5, "IDAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 4
    new-instance v5, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v7, "IEND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 5
    new-instance v7, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v9, "tRNS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 6
    new-instance v9, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v11, "cHRM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->cHRM:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 7
    new-instance v11, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v13, "gAMA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 8
    new-instance v13, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v15, "iCCP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 9
    new-instance v15, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v14, "sBIT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/commons/imaging/formats/png/ChunkType;->sBIT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 10
    new-instance v14, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v12, "sRGB"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 11
    new-instance v12, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v10, "tEXt"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 12
    new-instance v10, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v8, "zTXt"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 13
    new-instance v8, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v6, "iTXt"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 14
    new-instance v6, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v4, "bKGD"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->bKGD:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 15
    new-instance v4, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v2, "hIST"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/imaging/formats/png/ChunkType;->hIST:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 16
    new-instance v2, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v6, "pHYs"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 17
    new-instance v6, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v4, "sCAL"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->sCAL:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 18
    new-instance v4, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v2, "sPLT"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/imaging/formats/png/ChunkType;->sPLT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 19
    new-instance v2, Lorg/apache/commons/imaging/formats/png/ChunkType;

    const-string v6, "tIME"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tIME:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/16 v6, 0x13

    new-array v6, v6, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    aput-object v2, v6, v4

    .line 20
    sput-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/ChunkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B

    const/4 p2, 0x0

    .line 4
    aget-char p2, p1, p2

    const/4 v0, 0x1

    aget-char v0, p1, v0

    const/4 v1, 0x2

    aget-char v1, p1, v1

    const/4 v2, 0x3

    aget-char p1, p1, v2

    invoke-static {p2, v0, v1, p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->charsToQuad(CCCC)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/png/ChunkType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/png/ChunkType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/png/ChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    return-object v0
.end method
