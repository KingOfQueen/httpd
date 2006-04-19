# Copyright 2000-2006 The Apache Software Foundation or its licensors, as
# applicable.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# The build environment was provided by Sascha Schumann.

LTLIBRARY_OBJECTS = $(LTLIBRARY_SOURCES:.c=.lo) $(LTLIBRARY_OBJECTS_X)

$(LTLIBRARY_NAME): $(LTLIBRARY_OBJECTS) $(LTLIBRARY_DEPENDENCIES)
	$(LINK) $(LTLIBRARY_LDFLAGS) $(LTLIBRARY_OBJECTS) $(LTLIBRARY_LIBADD)
