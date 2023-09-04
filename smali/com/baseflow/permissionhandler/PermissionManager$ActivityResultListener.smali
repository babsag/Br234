.class final Lcom/baseflow/permissionhandler/PermissionManager$ActivityResultListener;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseflow/permissionhandler/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityResultListener"
.end annotation


# instance fields
.field alreadyCalled:Z

.field final callback:Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;


# direct methods
.method constructor <init>(Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager$ActivityResultListener;->alreadyCalled:Z

    .line 3
    iput-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager$ActivityResultListener;->callback:Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lcom/baseflow/permissionhandler/PermissionManager$ActivityResultListener;->alreadyCalled:Z

    const/4 v0, 0x0

    if-nez p3, :cond_2

    const p3, 0x568da1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/baseflow/permissionhandler/PermissionManager$ActivityResultListener;->alreadyCalled:Z

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x1

    .line 3
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/16 p3, 0xf

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p3, p0, Lcom/baseflow/permissionhandler/PermissionManager$ActivityResultListener;->callback:Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;

    invoke-interface {p3, p2}, Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;->onResult(Ljava/util/Map;)V

    return p1

    :cond_2
    :goto_0
    return v0
.end method
