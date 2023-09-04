.class Landroidx/webkit/ServiceWorkerControllerCompat$a;
.super Ljava/lang/Object;
.source "ServiceWorkerControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/ServiceWorkerControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Landroidx/webkit/ServiceWorkerControllerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;

    invoke-direct {v0}, Landroidx/webkit/internal/ServiceWorkerControllerImpl;-><init>()V

    sput-object v0, Landroidx/webkit/ServiceWorkerControllerCompat$a;->a:Landroidx/webkit/ServiceWorkerControllerCompat;

    return-void
.end method
