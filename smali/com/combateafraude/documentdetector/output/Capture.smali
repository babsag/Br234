.class public Lcom/combateafraude/documentdetector/output/Capture;
.super Ljava/lang/Object;
.source "Capture.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imagePath"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation
.end field

.field private d:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality"
    .end annotation
.end field

.field private e:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confidence"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lensFacing"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/Capture;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/combateafraude/documentdetector/output/Capture;->b:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/combateafraude/documentdetector/output/Capture;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/Capture;->d:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/Capture;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/output/Capture;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/output/Capture;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/Capture;->d:Ljava/lang/Double;

    .line 6
    iput p4, p0, Lcom/combateafraude/documentdetector/output/Capture;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/Capture;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/combateafraude/documentdetector/output/Capture;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/combateafraude/documentdetector/output/Capture;->c:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/combateafraude/documentdetector/output/Capture;->d:Ljava/lang/Double;

    .line 23
    iput-object p5, p0, Lcom/combateafraude/documentdetector/output/Capture;->e:Ljava/lang/Float;

    .line 24
    iput p6, p0, Lcom/combateafraude/documentdetector/output/Capture;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/Capture;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/combateafraude/documentdetector/output/Capture;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/combateafraude/documentdetector/output/Capture;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/Capture;->d:Ljava/lang/Double;

    .line 17
    iput-object p4, p0, Lcom/combateafraude/documentdetector/output/Capture;->e:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public getConfidence()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/Capture;->e:Ljava/lang/Float;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/Capture;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/Capture;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/Capture;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/Capture;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLensFacing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/output/Capture;->f:I

    return v0
.end method

.method public getQuality()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/Capture;->d:Ljava/lang/Double;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
