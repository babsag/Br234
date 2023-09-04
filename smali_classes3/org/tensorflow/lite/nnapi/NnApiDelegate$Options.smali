.class public final Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
.super Ljava/lang/Object;
.source "NnApiDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/nnapi/NnApiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# static fields
.field public static final EXECUTION_PREFERENCE_FAST_SINGLE_ANSWER:I = 0x1

.field public static final EXECUTION_PREFERENCE_LOW_POWER:I = 0x0

.field public static final EXECUTION_PREFERENCE_SUSTAINED_SPEED:I = 0x2

.field public static final EXECUTION_PREFERENCE_UNDEFINED:I = -0x1


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->e:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->f:Ljava/lang/Boolean;

    .line 8
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->g:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->a:I

    return p0
.end method

.method static synthetic b(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic f(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic g(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->g:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public setAcceleratorName(Ljava/lang/String;)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setAllowFp16(Z)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCacheDir(Ljava/lang/String;)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setExecutionPreference(I)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 1
    iput p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->a:I

    return-object p0
.end method

.method public setMaxNumberOfDelegatedPartitions(I)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public setModelToken(Ljava/lang/String;)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setUseNnapiCpu(Z)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->f:Ljava/lang/Boolean;

    return-object p0
.end method
