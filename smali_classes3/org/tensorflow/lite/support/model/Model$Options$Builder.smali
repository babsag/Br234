.class public Lorg/tensorflow/lite/support/model/Model$Options$Builder;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/model/Model$Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lorg/tensorflow/lite/support/model/Model$Device;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/tensorflow/lite/support/model/Model$Device;->CPU:Lorg/tensorflow/lite/support/model/Model$Device;

    iput-object v0, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->a:Lorg/tensorflow/lite/support/model/Model$Device;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->b:I

    return-void
.end method

.method static synthetic a(Lorg/tensorflow/lite/support/model/Model$Options$Builder;)Lorg/tensorflow/lite/support/model/Model$Device;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->a:Lorg/tensorflow/lite/support/model/Model$Device;

    return-object p0
.end method

.method static synthetic b(Lorg/tensorflow/lite/support/model/Model$Options$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->b:I

    return p0
.end method


# virtual methods
.method public build()Lorg/tensorflow/lite/support/model/Model$Options;
    .locals 2

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/model/Model$Options;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tensorflow/lite/support/model/Model$Options;-><init>(Lorg/tensorflow/lite/support/model/Model$Options$Builder;Lorg/tensorflow/lite/support/model/Model$a;)V

    return-object v0
.end method

.method public setDevice(Lorg/tensorflow/lite/support/model/Model$Device;)Lorg/tensorflow/lite/support/model/Model$Options$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->a:Lorg/tensorflow/lite/support/model/Model$Device;

    return-object p0
.end method

.method public setNumThreads(I)Lorg/tensorflow/lite/support/model/Model$Options$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->b:I

    return-object p0
.end method
