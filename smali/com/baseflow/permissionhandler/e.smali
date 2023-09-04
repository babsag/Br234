.class public final synthetic Lcom/baseflow/permissionhandler/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;


# instance fields
.field public final synthetic a:Lcom/baseflow/permissionhandler/PermissionManager;

.field public final synthetic b:Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/permissionhandler/PermissionManager;Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/permissionhandler/e;->a:Lcom/baseflow/permissionhandler/PermissionManager;

    iput-object p2, p0, Lcom/baseflow/permissionhandler/e;->b:Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/baseflow/permissionhandler/e;->a:Lcom/baseflow/permissionhandler/PermissionManager;

    iget-object v1, p0, Lcom/baseflow/permissionhandler/e;->b:Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;

    invoke-virtual {v0, v1, p1}, Lcom/baseflow/permissionhandler/PermissionManager;->a(Lcom/baseflow/permissionhandler/PermissionManager$ResultCallback;Ljava/util/Map;)V

    return-void
.end method
