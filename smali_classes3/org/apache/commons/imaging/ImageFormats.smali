.class public final enum Lorg/apache/commons/imaging/ImageFormats;
.super Ljava/lang/Enum;
.source "ImageFormats.java"

# interfaces
.implements Lorg/apache/commons/imaging/ImageFormat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/ImageFormats;",
        ">;",
        "Lorg/apache/commons/imaging/ImageFormat;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum BMP:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum DCX:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum GIF:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum ICNS:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum ICO:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum JBIG2:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum JPEG:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PAM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PBM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PCX:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PGM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PNG:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PNM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PPM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PSD:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum RGBE:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum TGA:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum TIFF:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum WBMP:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum XBM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum XPM:Lorg/apache/commons/imaging/ImageFormats;


# instance fields
.field private final extensions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

    .line 2
    new-instance v2, Lorg/apache/commons/imaging/ImageFormats;

    const-string v3, "bmp"

    const-string v4, "dib"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "BMP"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v2, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    .line 3
    new-instance v3, Lorg/apache/commons/imaging/ImageFormats;

    const-string v4, "dcx"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "DCX"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v3, Lorg/apache/commons/imaging/ImageFormats;->DCX:Lorg/apache/commons/imaging/ImageFormats;

    .line 4
    new-instance v4, Lorg/apache/commons/imaging/ImageFormats;

    const-string v6, "gif"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "GIF"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    .line 5
    new-instance v6, Lorg/apache/commons/imaging/ImageFormats;

    const-string v8, "icns"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v10, "ICNS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v6, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    .line 6
    new-instance v8, Lorg/apache/commons/imaging/ImageFormats;

    const-string v10, "ico"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "ICO"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v8, Lorg/apache/commons/imaging/ImageFormats;->ICO:Lorg/apache/commons/imaging/ImageFormats;

    .line 7
    new-instance v10, Lorg/apache/commons/imaging/ImageFormats;

    new-array v12, v1, [Ljava/lang/String;

    const-string v14, "JBIG2"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v10, Lorg/apache/commons/imaging/ImageFormats;->JBIG2:Lorg/apache/commons/imaging/ImageFormats;

    .line 8
    new-instance v12, Lorg/apache/commons/imaging/ImageFormats;

    const-string v14, "jpg"

    const-string v15, "jpeg"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "JPEG"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v12, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;

    .line 9
    new-instance v14, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "pam"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v13, "PAM"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v14, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    .line 10
    new-instance v13, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "psd"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v11, "PSD"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v13, Lorg/apache/commons/imaging/ImageFormats;->PSD:Lorg/apache/commons/imaging/ImageFormats;

    .line 11
    new-instance v11, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "pbm"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v9, "PBM"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v11, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    .line 12
    new-instance v9, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "pgm"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v7, "PGM"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v9, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    .line 13
    new-instance v7, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "pnm"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v5, "PNM"

    const/16 v1, 0xc

    invoke-direct {v7, v5, v1, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/ImageFormats;->PNM:Lorg/apache/commons/imaging/ImageFormats;

    .line 14
    new-instance v5, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "ppm"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "PPM"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v1, v7, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    .line 15
    new-instance v1, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "pcx"

    const-string v7, "pcc"

    filled-new-array {v15, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v15, "PCX"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v1, v15, v5, v7}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    .line 16
    new-instance v7, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "png"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v5, "PNG"

    move-object/from16 v18, v1

    const/16 v1, 0xf

    invoke-direct {v7, v5, v1, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    .line 17
    new-instance v5, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "hdr"

    const-string v1, "pic"

    filled-new-array {v15, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v15, "RGBE"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v15, v7, v1}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    .line 18
    new-instance v1, Lorg/apache/commons/imaging/ImageFormats;

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/String;

    const-string v15, "TGA"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v1, v15, v5, v7}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lorg/apache/commons/imaging/ImageFormats;->TGA:Lorg/apache/commons/imaging/ImageFormats;

    .line 19
    new-instance v7, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "tif"

    const-string v5, "tiff"

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v15, "TIFF"

    move-object/from16 v21, v1

    const/16 v1, 0x12

    invoke-direct {v7, v15, v1, v5}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    .line 20
    new-instance v5, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "wbmp"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "WBMP"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v1, v7, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/ImageFormats;->WBMP:Lorg/apache/commons/imaging/ImageFormats;

    .line 21
    new-instance v1, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "xbm"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v7, "XBM"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v1, v7, v5, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lorg/apache/commons/imaging/ImageFormats;->XBM:Lorg/apache/commons/imaging/ImageFormats;

    .line 22
    new-instance v7, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "xpm"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v5, "XPM"

    move-object/from16 v24, v1

    const/16 v1, 0x15

    invoke-direct {v7, v5, v1, v15}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/ImageFormats;->XPM:Lorg/apache/commons/imaging/ImageFormats;

    const/16 v5, 0x16

    new-array v5, v5, [Lorg/apache/commons/imaging/ImageFormats;

    const/4 v15, 0x0

    aput-object v0, v5, v15

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    aput-object v7, v5, v1

    .line 23
    sput-object v5, Lorg/apache/commons/imaging/ImageFormats;->$VALUES:[Lorg/apache/commons/imaging/ImageFormats;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/apache/commons/imaging/ImageFormats;->extensions:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageFormats;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/ImageFormats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/ImageFormats;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/ImageFormats;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->$VALUES:[Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/ImageFormats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method


# virtual methods
.method public getDefaultExtension()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/ImageFormats;->extensions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/ImageFormats;->extensions:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
