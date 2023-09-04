.class public final synthetic Landroidx/camera/core/n2;
.super Ljava/lang/Object;
.source "CameraFilter.java"


# direct methods
.method public static a(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/impl/Identifier;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/CameraFilter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/CameraFilter;->DEFAULT_ID:Landroidx/camera/core/impl/Identifier;

    return-object v0
.end method
