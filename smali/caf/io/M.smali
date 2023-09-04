.class public abstract Lcaf/io/M;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# static fields
.field public static final synthetic a:I


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0xf93da67cb6L

    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    const-wide v0, -0x1183da67cb6L

    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-wide v0, -0xce3da67cb6L

    .line 1
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide v0, -0xed3da67cb6L

    .line 2
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
