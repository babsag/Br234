.class public final Lorg/junit/runner/FilterFactoryParams;
.super Ljava/lang/Object;
.source "FilterFactoryParams.java"


# instance fields
.field private final a:Lorg/junit/runner/Description;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Description;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lorg/junit/runner/FilterFactoryParams;->a:Lorg/junit/runner/Description;

    .line 3
    iput-object p2, p0, Lorg/junit/runner/FilterFactoryParams;->b:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/runner/FilterFactoryParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTopLevelDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/runner/FilterFactoryParams;->a:Lorg/junit/runner/Description;

    return-object v0
.end method
