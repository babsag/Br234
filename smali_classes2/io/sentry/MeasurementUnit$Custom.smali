.class public final Lio/sentry/MeasurementUnit$Custom;
.super Ljava/lang/Object;
.source "MeasurementUnit.java"

# interfaces
.implements Lio/sentry/MeasurementUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MeasurementUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Custom"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/MeasurementUnit$Custom;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic apiName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lio/sentry/c1;->a(Lio/sentry/MeasurementUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/MeasurementUnit$Custom;->a:Ljava/lang/String;

    return-object v0
.end method
