.class public final synthetic Lcom/baseflow/permissionhandler/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/common/PluginRegistry$Registrar;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/permissionhandler/g;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method


# virtual methods
.method public final addListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/baseflow/permissionhandler/g;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method
