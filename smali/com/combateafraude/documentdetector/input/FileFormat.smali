.class public final enum Lcom/combateafraude/documentdetector/input/FileFormat;
.super Ljava/lang/Enum;
.source "FileFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/input/FileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/documentdetector/input/FileFormat;

.field public static final enum HEIF:Lcom/combateafraude/documentdetector/input/FileFormat;

.field public static final enum JPEG:Lcom/combateafraude/documentdetector/input/FileFormat;

.field public static final enum JPG:Lcom/combateafraude/documentdetector/input/FileFormat;

.field public static final enum PDF:Lcom/combateafraude/documentdetector/input/FileFormat;

.field public static final enum PNG:Lcom/combateafraude/documentdetector/input/FileFormat;


# instance fields
.field mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/input/FileFormat;

    const-string v1, "PNG"

    const/4 v2, 0x0

    const-string v3, "image/png"

    invoke-direct {v0, v1, v2, v3}, Lcom/combateafraude/documentdetector/input/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/combateafraude/documentdetector/input/FileFormat;->PNG:Lcom/combateafraude/documentdetector/input/FileFormat;

    .line 2
    new-instance v1, Lcom/combateafraude/documentdetector/input/FileFormat;

    const-string v3, "JPG"

    const/4 v4, 0x1

    const-string v5, "image/jpg"

    invoke-direct {v1, v3, v4, v5}, Lcom/combateafraude/documentdetector/input/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/combateafraude/documentdetector/input/FileFormat;->JPG:Lcom/combateafraude/documentdetector/input/FileFormat;

    .line 3
    new-instance v3, Lcom/combateafraude/documentdetector/input/FileFormat;

    const-string v5, "JPEG"

    const/4 v6, 0x2

    const-string v7, "image/jpeg"

    invoke-direct {v3, v5, v6, v7}, Lcom/combateafraude/documentdetector/input/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/combateafraude/documentdetector/input/FileFormat;->JPEG:Lcom/combateafraude/documentdetector/input/FileFormat;

    .line 4
    new-instance v5, Lcom/combateafraude/documentdetector/input/FileFormat;

    const-string v7, "PDF"

    const/4 v8, 0x3

    const-string v9, "application/pdf"

    invoke-direct {v5, v7, v8, v9}, Lcom/combateafraude/documentdetector/input/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/combateafraude/documentdetector/input/FileFormat;->PDF:Lcom/combateafraude/documentdetector/input/FileFormat;

    .line 5
    new-instance v7, Lcom/combateafraude/documentdetector/input/FileFormat;

    const-string v9, "HEIF"

    const/4 v10, 0x4

    const-string v11, "image/heif"

    invoke-direct {v7, v9, v10, v11}, Lcom/combateafraude/documentdetector/input/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/combateafraude/documentdetector/input/FileFormat;->HEIF:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/combateafraude/documentdetector/input/FileFormat;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/combateafraude/documentdetector/input/FileFormat;->$VALUES:[Lcom/combateafraude/documentdetector/input/FileFormat;

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
    iput-object p3, p0, Lcom/combateafraude/documentdetector/input/FileFormat;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/FileFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/combateafraude/documentdetector/input/FileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/documentdetector/input/FileFormat;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/documentdetector/input/FileFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/input/FileFormat;->$VALUES:[Lcom/combateafraude/documentdetector/input/FileFormat;

    invoke-virtual {v0}, [Lcom/combateafraude/documentdetector/input/FileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/documentdetector/input/FileFormat;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/FileFormat;->mimeType:Ljava/lang/String;

    return-object v0
.end method
