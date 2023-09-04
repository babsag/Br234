.class final Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseflow/permissionhandler/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RequestPermissionsListener"
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;

.field alreadyCalled:Z

.field final callback:Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;

.field final requestResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/Map;Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestResults",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->alreadyCalled:Z

    .line 3
    iput-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->activity:Landroid/app/Activity;

    .line 4
    iput-object p3, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->callback:Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;

    .line 5
    iput-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->alreadyCalled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->alreadyCalled:Z

    .line 3
    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_9

    .line 4
    aget-object v0, p2, v1

    .line 5
    invoke-static {v0}, Lcom/baseflow/permissionhandler/PermissionUtils;->parseManifestName(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    aget v2, p3, v1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    .line 7
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->activity:Landroid/app/Activity;

    .line 10
    invoke-static {v5, v0, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 11
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 13
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->activity:Landroid/app/Activity;

    .line 15
    invoke-static {v5, v0, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 16
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 17
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->activity:Landroid/app/Activity;

    .line 18
    invoke-static {v4, v0, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;II)I

    move-result v2

    .line 19
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 20
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    .line 21
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->activity:Landroid/app/Activity;

    .line 22
    invoke-static {v4, v0, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;II)I

    move-result v2

    .line 23
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v4, v5, :cond_5

    .line 24
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 25
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 28
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_5
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 30
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 33
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_6
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 35
    :cond_7
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 36
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->activity:Landroid/app/Activity;

    .line 38
    invoke-static {v5, v0, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 39
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->activity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/baseflow/permissionhandler/PermissionUtils;->updatePermissionShouldShowStatus(Landroid/app/Activity;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 41
    :cond_9
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->callback:Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;

    iget-object p3, p0, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsListener;->requestResults:Ljava/util/Map;

    invoke-interface {p2, p3}, Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;->onResult(Ljava/util/Map;)V

    return p1

    :cond_a
    :goto_3
    return v1
.end method
