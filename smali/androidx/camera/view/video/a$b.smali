.class final Landroidx/camera/view/video/a$b;
.super Landroidx/camera/view/video/Metadata$Builder;
.source "AutoValue_Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/location/Location;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/video/Metadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/view/video/Metadata;
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/view/video/a;

    iget-object v1, p0, Landroidx/camera/view/video/a$b;->a:Landroid/location/Location;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/view/video/a;-><init>(Landroid/location/Location;Landroidx/camera/view/video/a$a;)V

    return-object v0
.end method

.method public setLocation(Landroid/location/Location;)Landroidx/camera/view/video/Metadata$Builder;
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/view/video/a$b;->a:Landroid/location/Location;

    return-object p0
.end method
