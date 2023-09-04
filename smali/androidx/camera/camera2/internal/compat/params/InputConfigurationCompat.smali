.class public final Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;
.super Ljava/lang/Object;
.source "InputConfigurationCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$b;,
        Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$a;,
        Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$c;,
        Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;
    }
.end annotation


# instance fields
.field private final a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$b;

    invoke-direct {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$b;-><init>(III)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$a;

    invoke-direct {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$a;-><init>(III)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$c;

    invoke-direct {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$c;-><init>(III)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;)V
    .locals 0
    .param p1    # Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x1f

    if-lt v1, v0, :cond_2

    .line 2
    new-instance v0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;

    new-instance v1, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$b;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;-><init>(Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;)V

    return-object v0

    .line 3
    :cond_2
    new-instance v0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;

    new-instance v1, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$a;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;-><init>(Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    check-cast p1, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;

    iget-object p1, p1, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;->getFormat()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;->getWidth()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMultiResolution()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;->b()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;->a:Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$d;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
