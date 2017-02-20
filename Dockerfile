# Copyright 2017 Outscale SAS
#
# This file is part of Butterfly.
#
# Butterfly is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 3 as published
# by the Free Software Foundation.
#
# Butterfly is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Butterfly.  If not, see <http://www.gnu.org/licenses/>.

FROM centos
LABEL vendor="Outscale SAS"
LABEL com.outscale.butterfly.description="Butterfly API for testing purposes"
LABEL com.outscale.butterfly.version="0.4"
LABEL com.outscale.butterfly.release-date="2017-02-17"

RUN yum update -y && yum install -y libpcap && yum clean all

ADD https://github.com/outscale/butterfly/releases/download/v0.4/butterfly_0.4_x86_64.rpm butterfly.rpm
RUN rpm -i butterfly.rpm && rm -f butterfly.rpm
RUN butterflyd -V

COPY butterflyd.ini /etc/butterfly/
CMD butterflyd -c /etc/butterfly/butterflyd.ini
EXPOSE 9999

